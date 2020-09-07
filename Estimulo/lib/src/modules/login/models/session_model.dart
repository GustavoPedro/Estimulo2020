class SessionModel {
  String userName;
  String defSite;
  String maxauth;

  static final SessionModel _singleton = SessionModel._internal();

  factory SessionModel() {
    return _singleton;
  }

  configure({String userName, String defSite, String maxauth}) {
    _singleton.userName = userName;
    _singleton.defSite = defSite;
    _singleton.maxauth = maxauth;
  }

  SessionModel._internal();
}
