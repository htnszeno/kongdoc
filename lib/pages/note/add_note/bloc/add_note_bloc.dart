import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hifive/pages/note/home/bloc/note_home_bloc.dart';
import 'package:hifive/repositories/repositories.dart';

part 'add_note_event.dart';
part 'add_note_state.dart';
part 'add_note_bloc.freezed.dart';

class AddNoteBloc extends Bloc<AddNoteEvent, AddNoteState> {
  final NoteRepository _noteRepository;
  final NoteHomeBloc _noteBloc;

  AddNoteBloc({
    required NoteRepository noteRepository,
    required NoteHomeBloc noteBloc,
  })  : _noteRepository = noteRepository,
        _noteBloc = noteBloc,
        super(AddNoteState.initial()) {
    //
  }
}
