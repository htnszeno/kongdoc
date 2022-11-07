part of 'exam_cubit.dart';

@freezed
class ExamState with _$ExamState {
  const ExamState._();

  const factory ExamState(
      {required List<ExamItem> items,
      required ExamItem? exam,
      required int page,
      required DataStatus status,
      required bool isLastPage,
      required String message}) = _ExamState;

  factory ExamState.initial() {
    return const ExamState(
      page: 1,
      items: [],
      status: DataStatus.initial,
      isLastPage: false,
      message: '',
      exam: null,
    );
  }

  bool get hasExams => items.isNotEmpty;

  bool get hasExam => exam != null;

  bool get isProcessing =>
      status.isDeleting || status.isUpdating || status.isSubmitting;
}
