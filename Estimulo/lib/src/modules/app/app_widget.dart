import 'package:Estimulo/src/modules/login/pages/authentication/authentication_page.dart';
import 'package:Estimulo/src/modules/login/pages/authentication/bloc/authentication_bloc.dart';
import 'package:Estimulo/src/modules/login/repository/login_repository.dart';
import 'package:Estimulo/src/shared/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

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
      home: BlocProvider(
        create: (context) => AuthenticationBloc(
            repository: GetIt.instance.get<LoginRepository>()),
        child: AuthenticationPage(),
      ),
    );
  }
}
