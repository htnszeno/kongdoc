part of 'exam_bloc.dart';

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
}
