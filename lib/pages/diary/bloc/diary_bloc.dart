import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hifive/enums/data_status.dart';
import 'package:hifive/models/diary_model.dart';
import 'package:hifive/repositories/diary_repository.dart';

part 'diary_event.dart';
part 'diary_state.dart';
part 'diary_bloc.freezed.dart';

class DiaryBloc extends Bloc<DiaryEvent, DiaryState> {
  final DiaryRepository _diaryRepository;

  DiaryBloc({
    required DiaryRepository diaryRepository,
  })  : _diaryRepository = diaryRepository,
        super(DiaryState.initial()) {
    on<DiaryEvent>((event, emit) {});
  }
}
