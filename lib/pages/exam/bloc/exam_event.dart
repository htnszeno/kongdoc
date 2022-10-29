part of 'exam_bloc.dart';

@freezed
class ExamEvent with _$ExamEvent {
  const factory ExamEvent.started() = Started;

  const factory ExamEvent.loadMore() = LoadMore;

  // 재조회
  const factory ExamEvent.refresh() = Refresh;

  const factory ExamEvent.setSelectedExam(ExamItem? exam) = SetSelectedExam;
}
