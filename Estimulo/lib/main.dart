import 'package:Estimulo/src/modules/app/app_module.dart';
import 'package:Estimulo/src/modules/app/app_widget.dart';
import 'package:Estimulo/src/modules/cadastro/cadastro_module.dart';
import 'package:Estimulo/src/modules/home/home_module.dart';
import 'package:Estimulo/src/modules/login/login_module.dart';
import 'package:flutter/material.dart';

void main() {
  AppModule.registerDependencies();
  CadastroModule.registerDependencies();
  LoginModule.registerDependencies();
  HomeModule.registerDependencies();
  runApp(AppWidget());
}
