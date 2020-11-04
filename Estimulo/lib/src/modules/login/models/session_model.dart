import 'package:flutter/material.dart';

class SessionModel {
  String userName;
  String token;

  static final SessionModel _singleton = SessionModel._internal();

  factory SessionModel() {
    return _singleton;
  }

  configure({@required String userName, @required String token}) {
    _singleton.userName = userName;
    _singleton.token = token;
  }

  SessionModel._internal();
}
