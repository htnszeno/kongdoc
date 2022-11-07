import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hifive/enums/data_status.dart';
import 'package:hifive/models/exam_model.dart';
import 'package:hifive/pages/exam/request/create_exam_request.dart';
import 'package:hifive/pages/exam/request/update_exam_request.dart';
import 'package:hifive/repositories/exam_repository.dart';
import 'package:reactive_forms/reactive_forms.dart';

part 'exam_state.dart';
part 'exam_cubit.freezed.dart';

class ExamCubit extends Cubit<ExamState> {
  ExamCubit(this._examRepository) : super(ExamState.initial());

  final ExamRepository _examRepository;

  void started() async {
    await _getFirstPage();
  }

  void loadMore() async {
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
  }

  void refresh() async {
    if (state.status.isRefreshing) return;

    emit(state.copyWith(status: DataStatus.refreshing));
    await Future.delayed(const Duration(seconds: 1));
    await _getFirstPage();
  }

  void create(
    CreateExamRequest request,
  ) async {
    if (state.status.isUpdating) return;
    emit(state.copyWith(status: DataStatus.updating));

    final result = await _examRepository.create(request);

    if (result.success) {
      emit(state.copyWith(
        message: result.message,
        status: DataStatus.success,
        exam: null,
      ));
    } else {
      emit(state.copyWith(
        message: result.message,
        status: DataStatus.error,
      ));
    }
  }

  void update(
    UpdateExamRequest request,
    int id,
  ) async {
    if (state.status.isUpdating) return;
    emit(state.copyWith(status: DataStatus.updating));

    final result = await _examRepository.update(request, id);

    if (result.success) {
      emit(state.copyWith(
        message: result.message,
        status: DataStatus.success,
        exam: null,
      ));
    } else {
      emit(state.copyWith(
        message: result.message,
        status: DataStatus.error,
      ));
    }
  }

  void setSelectedExam(ExamItem? exam) async {
    if (exam == null) return;

    int? id = exam?.id;
    emit(state.copyWith(status: DataStatus.loading));
    final result = await _examRepository.getSingle(id: id!);
    emit(state.copyWith(exam: result.data, status: DataStatus.loaded));
  }

  Future<void> _getFirstPage() async {
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

  FormGroup get formgroup {
    return fb.group(
      {
        'id': [state.exam?.id],
        'userId': [state.exam?.userId],
        'title': [
          state.hasExam ? state.exam!.title : "",
          Validators.required,
        ],
        'body': [
          state.hasExam ? state.exam!.body : "",
          Validators.required,
        ],
      },
    );
  }
}
