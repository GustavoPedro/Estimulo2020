import 'package:Estimulo/src/modules/login/controllers/login_controller.dart';
import 'package:Estimulo/src/modules/login/models/session_state_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../login_module.dart';
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
    controller ??= LoginModule.to.get<LoginController>();
    super.didChangeDependencies();
    //() => Modular.to.pushNamed('/home')
    _disposers ??= [
      reaction(
          (_) => controller.session,
          (SessionStateEnum session) => {
                if (session == SessionStateEnum.LOGIN_SUCCESS)
                  {Modular.to.pushReplacementNamed('/home')}
              })
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(builder: (_) {
        if (controller.session == SessionStateEnum.LOGGING) {
          return Center(child: CircularProgressIndicator());
        } else {
          return LoginPage();
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
