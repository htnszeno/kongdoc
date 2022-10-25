class Endpoints {
  /// Current Api Version
  static const _apiVersion = "/api";

  /// Note
  static const _baseNote = "$_apiVersion/note";

  static const noteGetSingle = "$_baseNote/";
  static const noteGetMany = _baseNote;
  static const noteCreate = _baseNote;
  static const noteUpdate = "$_baseNote/";
  static const noteDeleteSingle = "$_baseNote/";

  static const token = "/logisvalley_sec";
  static const getInit = "/api/ATLAS1000000SVC/getInitMobile";
}
