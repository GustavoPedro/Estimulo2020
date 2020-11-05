import 'package:Estimulo/src/modules/home/pages/home_page.dart';
import 'package:Estimulo/src/modules/login/pages/authentication/bloc/authentication_bloc.dart';
import 'package:Estimulo/src/modules/login/pages/login/bloc/login_bloc.dart';
import 'package:Estimulo/src/modules/login/repository/login_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../login/login_page.dart';

class AuthenticationPage extends StatefulWidget {
  @override
  _AuthenticationPageState createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        if (state is AuthenticationInitial || state is AuthenticationFailure) {
          return LoginPage();
        } else if (state is AuthenticationInProgress ||
            state is AuthenticationInitial) {
          return CircularProgressIndicator();
        } else {
          return HomePage();
        }
      },
    ));
  }
}
