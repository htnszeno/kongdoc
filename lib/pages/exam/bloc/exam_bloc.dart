import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hifive/enums/data_status.dart';
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
      debugPrint('============= event ${event} ##########################');
      // }
    });

    on<Started>((event, emit) async {
      print("111");

      final result = await _examRepository.getMany();
      print(result);
      print("222");
    });
  }
}
