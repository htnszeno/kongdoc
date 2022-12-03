import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hifive/enums/data_status.dart';
import 'package:hifive/enums/filter_data_type.dart';
import 'package:hifive/models/comment_model.dart';
import 'package:hifive/models/social_model.dart';
import 'package:hifive/pages/social/request/comment_request.dart';
import 'package:hifive/pages/social/request/create_social_request.dart';
import 'package:hifive/pages/social/request/update_social_request.dart';
import 'package:hifive/repositories/social_repository.dart';
import 'package:hifive/util/dialogs.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:reactive_forms/reactive_forms.dart';

part 'social_bloc.freezed.dart';

part 'social_event.dart';

part 'social_state.dart';

class SocialBloc extends Bloc<SocialEvent, SocialState> {
  final SocialRepository _socialRepository;

  SocialBloc({
    required SocialRepository socialRepository,
  })  : _socialRepository = socialRepository,
        super(SocialState.initial()) {
    // 좋아요 리스트
    on<ReqeustLikeData>((event, emit) async {
      await _getLikeFirstPage(event, emit);
    });
    on<ReqeustCommentData>((event, emit) async {
      print("ReqeustCommentData.....");
      await _getCommentFirstPage(event, emit);
    });

    on<Refresh>((event, emit) async {
      if (state.status.isRefreshing) return;

      emit(state.copyWith(status: DataStatus.refreshing));
      await Future.delayed(const Duration(seconds: 1));
      await _getFirstPage(emit);
    });
    on<Started>((event, emit) async {
      await _getFirstPage(emit);
    });

    on<Delete>((event, emit) async {
      await _socialRepository.deleteSingle(event.postId);
      showMessageSnackbar('게시물이 삭제되었습니다.');
      emit(state.copyWith(
        listItems: [...state.listItems]
          ..removeWhere((element) => element.postId == event.postId),
      ));
    });

    on<SetSelectedItem>((event, emit) async {
      emit(state.copyWith(selectedItem: event.selectedItem));

      // 별도 화면에서 ajax로 불러오는 로직 화면 변화로 제거됨.
      // if (event.selectedItem == null) {
      //   emit(state.copyWith(selectedItem: event.selectedItem));
      //   return;
      // }
      // String? postId = event.selectedItem?.postId;
      // emit(state.copyWith(status: DataStatus.loading));
      // await Future.delayed(const Duration(seconds: 1));
      // final result = await _socialRepository.getSingle(postId: postId!);
      // emit(state.copyWith(
      //     selectedItem: result.data?[0], status: DataStatus.loaded));
    });

    on<Filter>((event, emit) {
      List<SocialItem> listItems = [...state.listItems];
      switch (event.type) {
        case FilterDataType.delete:
          listItems.removeWhere(
              (element) => element.postId == (event.data as SocialItem).postId);
          break;
        case FilterDataType.update:
          final updateNoteIndex = listItems.indexWhere(
              (element) => element.postId == (event.data as SocialItem).postId);
          if (updateNoteIndex != -1) {
            listItems[updateNoteIndex] = event.data;
          }
          break;
        case FilterDataType.create:
          listItems = [event.data, ...listItems];
          break;
      }

      emit(state.copyWith(listItems: listItems));
    });

    on<Update>((event, emit) async {
      if (state.status.isUpdating) return;
      emit(state.copyWith(status: DataStatus.updating));

      final result = await _socialRepository.update(event.request);

      if (result.success) {
        List<SocialItem> listItems = [...state.listItems];
        final updateNoteIndex =
            listItems.indexWhere((element) => element.postId == event.postId);
        if (updateNoteIndex != -1) {
          listItems[updateNoteIndex] = result.data![0];
        }
        emit(state.copyWith(
          msg: result.msg,
          status: DataStatus.success,
          selectedItem: null,
          listItems: listItems,
        ));
      } else {
        emit(state.copyWith(
          msg: result.msg,
          status: DataStatus.error,
        ));
      }
    });

    on<Create>((event, emit) async {
      if (state.status.isUpdating) return;
      emit(state.copyWith(status: DataStatus.updating));

      List<SocialItem> listItems = [...state.listItems];

      final postIdData = await _socialRepository.getPostId();
      await _socialRepository.fileUpload(
          files: event.images, postId: postIdData.data!);
      final result =
          await _socialRepository.create(event.request, postIdData.data!);
      if (result.success) {
        listItems = [result.data![0], ...listItems];

        emit(state.copyWith(
            msg: result.msg,
            status: DataStatus.success,
            selectedItem: null,
            listItems: listItems));
      } else {
        emit(state.copyWith(
          msg: result.msg,
          status: DataStatus.error,
        ));
      }
    });

    on<LoadMore>((event, emit) async {
      if (state.status.isLoadingMore || state.isLastPage) return;

      emit(state.copyWith(status: DataStatus.loadingMore));
      final newPage = state.page + 1;
      final result = await _socialRepository.getMany(currentPage: newPage);

      if (result.success) {
        final newItems = result.data ?? [];
        if (newItems.isNotEmpty) {
          emit(
            state.copyWith(
              listItems: [...state.listItems, ...newItems],
              status: DataStatus.initial,
              page: newPage,
            ),
          );
        } else {
          emit(
            state.copyWith(
              status: DataStatus.initial,
              isLastPage: true,
            ),
          );
        }
      } else {
        emit(
          state.copyWith(
              msg: result.msg,
              status: DataStatus.error,
              returnType: result.type!),
        );
      }
    });
    on<AddLikeCount>((event, emit) async {
      await _socialRepository.addLikeCount(event.postId, event.userId);
      final result = await _socialRepository.getMany(postId: event.postId!);

      if (result.success) {
        List<SocialItem> listItems = [...state.listItems];
        final updateNoteIndex =
            listItems.indexWhere((element) => element.postId == event.postId);
        if (updateNoteIndex != -1) {
          listItems[updateNoteIndex] = result.data![0];
        }

        emit(state.copyWith(
          listItems: listItems,
          status: DataStatus.loaded,
          msg: result.msg,
        ));
      } else {
        emit(state.copyWith(
          msg: result.msg,
          status: DataStatus.error,
        ));
      }
    });

    // 댓글 입력
    on<CreateComment>((event, emit) async {
      if (state.status.isUpdating) return;
      emit(state.copyWith(status: DataStatus.updating));

      List<CommentItem> commentItems = [...state.commentItems];

      final result = await _socialRepository.createComment(event.request);
      if (result.success) {
        // @todo 부모댓글을 찾아서 이하로 넣어줘야함.
        final updateNoteIndex =
        commentItems.indexWhere((element) => element.commentId == event.request.parentCommentId);
        if (updateNoteIndex != -1) {
          // 대체가 아니라끼워 넣어야한다.
          commentItems.insert(updateNoteIndex+1, result.data![0]);
        }

        emit(state.copyWith(
          msg: result.msg,
          status: DataStatus.success,
          commentItems: commentItems,
        ));
      } else {
        emit(state.copyWith(
          msg: result.msg,
          status: DataStatus.error,
        ));
      }
    });

    // 댓글 입력
    on<SetSelectedCommentItem>((event, emit) async {
      emit(state.copyWith(selectedCommentItem: event.selectedCommentItem));
    });
  }

  // 댓글
  Future<void> _getCommentFirstPage(
      ReqeustCommentData event, Emitter<SocialState> emit) async {
    final result = await _socialRepository.getCommentMany(postId: event.postId);
    if (result.success) {
      emit(state.copyWith(
        commentItems: result.data ?? [],
        status: DataStatus.initial,
        isLastPage: false,
        page: 1,
      ));
    } else {
      emit(state.copyWith(
        msg: result.msg,
        status: DataStatus.error,
        isLastPage: false,
        page: 1,
      ));
    }
  }

  // 좋아요
  Future<void> _getLikeFirstPage(
      ReqeustLikeData event, Emitter<SocialState> emit) async {
    final result = await _socialRepository.getLikeMany(postId: event.postId);
    if (result.success) {
      emit(state.copyWith(
        likeItems: result.data ?? [],
        status: DataStatus.initial,
        isLastPage: false,
        page: 1,
      ));
    } else {
      emit(state.copyWith(
        msg: result.msg,
        status: DataStatus.error,
        isLastPage: false,
        page: 1,
      ));
    }
  }

  Future<void> _getFirstPage(Emitter<SocialState> emit) async {
    final result = await _socialRepository.getMany(currentPage: 1);
    if (result.success) {
      emit(state.copyWith(
        listItems: result.data ?? [],
        status: DataStatus.initial,
        isLastPage: false,
        page: 1,
      ));
    } else {
      emit(state.copyWith(
        msg: result.msg,
        status: DataStatus.error,
        isLastPage: false,
        page: 1,
      ));
    }
  }

  FormGroup get socialFormgroup {
    return fb.group(
      {
        'postId': [state.selectedItem?.postId],
        'userId': [state.selectedItem?.userId],
        'contents': [
          state.hasSelectedItem ? state.selectedItem!.contents : "",
          Validators.required,
        ],
      },
    );
  }

// FormGroup get commentFormgroup {
//   return fb.group(
//     {
//       'postId': [state.selectedItem?.postId],
//       'userId': [state.selectedItem?.userId],
//       'comment': [
//         state.hasSelectedItem ? state.selectedItem!.contents : "",
//         Validators.required,
//       ],
//     },
//   );
// }
}
