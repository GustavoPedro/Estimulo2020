import 'dart:convert';

import 'package:Estimulo/src/modules/login/models/session_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LoginRepository {
  final Dio _dio;
  final SessionModel _sessionModel;

  LoginRepository(this._dio, this._sessionModel);

  // Future<SessionModel> signIn({String username, String password}) async {
  //   try {
  //     String maxauth = _encodeString(username, password);

  //     //https://ge-rl-dev.maximo.com/maximo/oslc/os/mxperuser?oslc.select=user.defsite&oslc.where=user.userid=%22503081104%22
  //     _dio.options.headers["maxauth"] = maxauth;
  //     var response = await _dio.get(
  //         '/oslc/os/mxperuser?oslc.select=user.defsite&oslc.where=user.userid="$username"&lean=1');
  //     if (response?.statusCode == 200) {
  //       String defsite = response.data["member"][0]["user"]["defsite"];
  //       _persistToken(defsite, maxauth, username);
  //       return SessionModel(
  //           sessionStateEnum: SessionStateEnum.LOGIN_SUCCESS,
  //           defSite: defsite,
  //           maxauth: maxauth,
  //           userName: username);
  //     }
  //     return SessionModel(sessionStateEnum: SessionStateEnum.LOGIN_ERROR);
  //   } catch (e) {
  //     throw e;
  //   }
  // }
  Future<bool> signIn({String username, String password}) async {
    bool retorno = false;
    await Future.delayed(Duration(seconds: 3), () {
      if (username == "Bune" && password == "Cap") {
        _sessionModel.configure(
            userName: "Cap", defSite: "TBT", maxauth: "adewadawd");
        retorno = true;
      }
    });
    return retorno;
  }

  void _persistToken(String defsite, String maxauth, String username) async {
    final storage = new FlutterSecureStorage();
    await storage.write(key: "defsite", value: defsite);
    await storage.write(key: "maxauth", value: maxauth);
    await storage.write(key: "username", value: username);
  }

  void deleteToken() async {
    final storage = new FlutterSecureStorage();
    await storage.deleteAll();
  }

  Future<bool> hasToken() async {
    final storage = new FlutterSecureStorage();

    String defSite = await storage.read(key: "defsite");
    String maxauth = await storage.read(key: "maxauth");
    String userName = await storage.read(key: "username");
    if (defSite != null &&
        defSite.isNotEmpty &&
        maxauth != null &&
        maxauth.isNotEmpty &&
        userName != null &&
        userName.isNotEmpty) {
      _dio.options.headers["maxauth"] = maxauth;
      _sessionModel.configure(
          userName: "Cap", defSite: "TBT", maxauth: "adewadawd");
      return true;
    } else {
      return false;
    }
  }

  String _encodeString(String user, String password) {
    String authorization = user + ":" + password;
    return base64.encode(utf8.encode(authorization));
  }
}
