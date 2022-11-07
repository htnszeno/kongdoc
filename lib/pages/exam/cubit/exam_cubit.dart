import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exam_state.dart';
part 'exam_cubit.freezed.dart';

class ExamCubit extends Cubit<ExamState> {
  ExamCubit() : super(ExamState.initial());
}
