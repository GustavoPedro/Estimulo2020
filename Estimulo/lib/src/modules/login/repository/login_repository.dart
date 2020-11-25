import 'dart:convert';

import 'package:Estimulo/src/modules/login/models/session_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Data {
  final String username;
  final String password;

  Data(this.username, this.password);
}

class LoginRepository {
  final Dio _dio;
  final SessionModel _sessionModel;

  LoginRepository(this._dio, this._sessionModel);

  Future<bool> signIn({String username, String password}) async {
    try {
      var response = await _dio.post('http://192.168.1.106:5000/api/Auth',
          data: {"email": username, "senha": password});
      if (response?.statusCode == 200) {
        String userName = response.data["user"]["Nome"];
        String token = response.data["token"];

        _persistToken(userName: userName, token: token);
        _sessionModel.configure(userName: userName, token: token);
        return true;
      }
      return false;
    } catch (e) {
      throw e;
    }
  }

  // ignore: unused_element
  void _persistToken(
      {@required String token, @required String userName}) async {
    final storage = new FlutterSecureStorage();
    await storage.write(key: "token", value: token);
    await storage.write(key: "userName", value: userName);
  }

  void deleteToken() async {
    final storage = new FlutterSecureStorage();
    await storage.deleteAll();
  }

  Future<bool> hasToken() async {
    final storage = new FlutterSecureStorage();

    String token = await storage.read(key: "token");
    String userName = await storage.read(key: "userName");
    if (token != null &&
        token.isNotEmpty &&
        userName != null &&
        userName.isNotEmpty) {
      _sessionModel.configure(userName: userName, token: token);
      return true;
    } else {
      return false;
    }
  }

// ignore: unused_element
  String _encodeString(String user, String password) {
    String authorization = user + ":" + password;
    return base64.encode(utf8.encode(authorization));
  }
}
