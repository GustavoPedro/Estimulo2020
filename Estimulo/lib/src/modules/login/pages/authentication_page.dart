import 'package:Estimulo/src/modules/home/pages/home_page.dart';
import 'package:Estimulo/src/modules/login/controllers/login_controller.dart';
import 'package:Estimulo/src/modules/login/models/session_state_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'login_page.dart';

class AuthenticationPage extends StatefulWidget {
  @override
  _AuthenticationPageState createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  LoginController controller;
  List<ReactionDisposer> _disposers;

  @override
  void didChangeDependencies() {
    controller ??= GetIt.I.get<LoginController>();
    super.didChangeDependencies();
    _disposers ??= [
      reaction((_) {
        return controller.session;
      }, (SessionStateEnum session) {
        if (session == SessionStateEnum.LOGIN_SUCCESS) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),
          );
        }
      })
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(builder: (_) {
        if (controller.session == SessionStateEnum.LOGGING) {
          return Center(child: CircularProgressIndicator());
        } else if (controller.session == SessionStateEnum.INITIAL) {
          return LoginPage(controller);
        } else {
          return CircularProgressIndicator();
        }
      }),
    );
  }

  @override
  void dispose() {
    _disposers.forEach((d) => d());
    super.dispose();
  }
}
