import 'package:Estimulo/src/modules/login/pages/authentication_page.dart';
import 'package:Estimulo/src/shared/app_colors.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Estimulo 2020',
      theme: ThemeData(
        primaryColor: AppColors.primary,
        //accentColor: AppColors.secondary,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: "Avenir, Helvetica, Arial, sans-serif",
      ),
      home: AuthenticationPage(),
    );
  }
}
