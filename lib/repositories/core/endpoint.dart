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

  static const token = "/pet_sec";
  static const getInit = "/api/P1000000SVC/getInit";

  static const logout = '/j_spring_security_logout';

  ////////////////// 쇼셜 SNS ///////////////////
  static const socialGetMany = '/api/SO001SVC/get';
}
