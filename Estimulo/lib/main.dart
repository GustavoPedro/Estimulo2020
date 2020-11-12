import 'package:Estimulo/src/modules/app/app_module.dart';
import 'package:Estimulo/src/modules/app/app_widget.dart';
import 'package:Estimulo/src/modules/home/home_module.dart';
import 'package:Estimulo/src/modules/login/login_module.dart';
import 'package:Estimulo/src/modules/training/training_module.dart';
import 'package:Estimulo/src/modules/weaknesses/weaknesses_module.dart';
import 'package:flutter/material.dart';

void main() {
  AppModule.registerDependencies();
  WeaknessesModule.registerDependencies();
  LoginModule.registerDependencies();
  TrainingModule.registerDependencies();
  HomeModule.registerDependencies();
  runApp(AppWidget());
}
