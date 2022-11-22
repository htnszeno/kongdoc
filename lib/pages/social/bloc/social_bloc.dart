import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hifive/enums/data_status.dart';
import 'package:hifive/enums/filter_data_type.dart';
import 'package:hifive/models/social_model.dart';
import 'package:hifive/pages/social/request/create_social_request.dart';
import 'package:hifive/pages/social/request/update_social_request.dart';
import 'package:hifive/repositories/social_repository.dart';
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
    on<SocialEvent>((event, emit) {});
    on<Refresh>((event, emit) async {
      if (state.status.isRefreshing) return;

      emit(state.copyWith(status: DataStatus.refreshing));
      await Future.delayed(const Duration(seconds: 1));
      await _getFirstPage(emit);
    });
    on<Started>((event, emit) async {
      await _getFirstPage(emit);
    });


    on<Delete>((event, emit) {
      _socialRepository.deleteSingle(event.postId);
      emit(state.copyWith(
        listItems: [...state.listItems]
          ..removeWhere((element) => element.postId == event.postId),
      ));
    });

    on<SetSelectedItem>((event, emit) async {
      if (event.selectedItem == null) {
        emit(state.copyWith(selectedItem: null));
        return;
      }

      String? postId = event.selectedItem?.postId;
      emit(state.copyWith(status: DataStatus.loading));
      await Future.delayed(const Duration(seconds: 1));
      final result = await _socialRepository.getSingle(postId: postId!);
      emit(state.copyWith(
          selectedItem: result.data?[0], status: DataStatus.loaded));
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
          listItems[updateNoteIndex] = result.data!;
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
      await _socialRepository.fileUpload(file: event.file, postId: postIdData.data!);
      final result = await _socialRepository.create(event.request, postIdData.data!);
      if (result.success) {
        listItems = [result.data!, ...listItems];

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
          ),
        );
      }
    });
    // on<FileUpload>((event, emit) async {
    //
    // });
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

  FormGroup get formgroup {
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
}
