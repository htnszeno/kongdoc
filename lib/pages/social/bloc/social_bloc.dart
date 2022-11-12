import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hifive/enums/data_status.dart';
import 'package:hifive/models/social_model.dart';
import 'package:hifive/pages/social/request/create_social_request.dart';
import 'package:hifive/pages/social/request/update_social_request.dart';
import 'package:hifive/repositories/social_repository.dart';

part 'social_event.dart';
part 'social_state.dart';
part 'social_bloc.freezed.dart';

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

    on<Create>((event, emit) async {
      print('create....');
      if (state.status.isUpdating) return;
      emit(state.copyWith(status: DataStatus.updating));

      final result = await _socialRepository.create(event.request);
      print(' ====== ${result}');

      if (result.success) {
        emit(state.copyWith(
          msg: result.msg,
          status: DataStatus.success,
          selectedItem: null,
        ));
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
  }

  Future<void> _getFirstPage(Emitter<SocialState> emit) async {
    final result = await _socialRepository.getMany(currentPage: 1);
    print(result);
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
}
