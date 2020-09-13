import 'package:Estimulo/src/shared/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: Modular.navigatorKey,
      title: 'Estimulo 2020',
      theme: ThemeData(
        primaryColor: AppColors.primary,
        accentColor: AppColors.secondary,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: "Avenir, Helvetica, Arial, sans-serif",
      ),
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
