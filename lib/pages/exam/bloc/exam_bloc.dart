import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hifive/enums/data_status.dart';
import 'package:hifive/models/exam_model.dart';
import 'package:hifive/models/note_model.dart';
import 'package:hifive/repositories/exam_repository.dart';
part 'exam_event.dart';
part 'exam_state.dart';
part 'exam_bloc.freezed.dart';

class ExamBloc extends Bloc<ExamEvent, ExamState> {
  final ExamRepository _examRepository;

  ExamBloc({
    required ExamRepository examRepository,
  })  : _examRepository = examRepository,
        super(ExamState.initial()) {
    //
    on<ExamEvent>((event, emit) {
      // if (kDebugMode) {
      //   print(event);
      // }
    });

    on<Started>((event, emit) async {
      await _getFirstPage(emit);
    });

    on<Refresh>((event, emit) async {
      if (state.status.isRefreshing) return;

      emit(state.copyWith(status: DataStatus.refreshing));

      await _getFirstPage(emit);
    });

    on<LoadMore>((event, emit) async {
      if (state.status.isLoadingMore || state.isLastPage) return;

      emit(state.copyWith(status: DataStatus.loadingMore));
      final newPage = state.page + 1;
      final result = await _examRepository.getMany(currentPage: newPage);

      if (result.success) {
        final newItems = result.data ?? [];
        if (newItems.isNotEmpty) {
          emit(
            state.copyWith(
              items: [...state.items, ...newItems],
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
            message: result.message,
            status: DataStatus.error,
          ),
        );
      }
    });
  }

  Future<void> _getFirstPage(Emitter<ExamState> emit) async {
    final result = await _examRepository.getMany(currentPage: 1);
    if (result.success) {
      emit(state.copyWith(
        items: result.data ?? [],
        status: DataStatus.initial,
        isLastPage: false,
        page: 1,
      ));
    } else {
      emit(state.copyWith(
        message: result.message,
        status: DataStatus.error,
        isLastPage: false,
        page: 1,
      ));
    }
  }
}
