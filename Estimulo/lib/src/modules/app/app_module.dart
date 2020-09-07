import 'package:Estimulo/src/modules/login/login_module.dart';
import 'package:Estimulo/src/modules/login/models/session_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

import 'app_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SessionModel()),
        Bind(
          (i) => Dio(
            BaseOptions(baseUrl: 'http://maximo.ddns:7001/maximo/oslc/os'),
          ),
        ),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: LoginModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
