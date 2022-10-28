part of 'exam_bloc.dart';

@freezed
class ExamState with _$ExamState {
  const ExamState._();

  const factory ExamState({
    required List<NoteItem> exams,
    required int page,
    required DataStatus status,
  }) = _ExamState;

  factory ExamState.initial() {
    return const ExamState(
      page: 1,
      exams: [],
      status: DataStatus.initial,
    );
  }

  bool get hasExams => exams.isNotEmpty;
}
