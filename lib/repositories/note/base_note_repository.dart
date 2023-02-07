import 'package:kongdoc/models/app_response.dart';
import 'package:kongdoc/models/note_model.dart';

abstract class BaseNoteRepository {
  Future<AppResponse<List<NoteItem>?>> getMany({
    required int currentPage,
    int pageSize = 15,
  });

  // Future<AppResponse<NoteItem?>> create(CreateNoteRequest request);

  // Future<AppResponse<NoteItem?>> update(UpdateNoteRequest request, int id);

  // Future<AppResponse<NoteItem?>> getSingle(int id);

  // Future<AppResponse<int?>> deleteSingle(int id);
}
