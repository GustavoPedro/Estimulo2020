import 'package:Estimulo/src/modules/login/controllers/login_controller.dart';
import 'package:Estimulo/src/modules/login/login_module.dart';
import 'package:Estimulo/src/modules/login/widgets/login_loading.dart';
import 'package:Estimulo/src/shared/enuns/screen_state_enum.dart';
import 'package:Estimulo/src/shared/widgets/text_form_required.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

import 'create_account_button.dart';
import 'login_button.dart';

class LoginFormWidget extends StatefulWidget {
  final GlobalKey<FormState> _formKey;

  const LoginFormWidget({
    Key key,
    @required GlobalKey<FormState> formKey,
  })  : _formKey = formKey,
        super(key: key);
  @override
  _LoginFormWidgetState createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  LoginController controller;
  List<ReactionDisposer> _disposers;

  @override
  void didChangeDependencies() {
    _disposers ??= [];
    controller ??= LoginModule.to.get<LoginController>();
    super.didChangeDependencies();
    _disposers ??= [
      reaction((_) => controller.screenStateEnum,
          (ScreenStateEnum screenStateEnum) {
        if (screenStateEnum == ScreenStateEnum.ERROR) {
          print('deu erroa ai');
        }
      })
    ];
  }

  @override
  void dispose() {
    _disposers.forEach((d) => d());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget._formKey,
      child: Padding(
        padding: EdgeInsets.only(left: 24.0, right: 24.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 48.0),
            Center(
              child: Text(
                "Bem Vindo",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(height: 48.0),
            TextFormRequired(
              initialValue: controller.loginModel.userName,
              labelText: "Usuário",
              requiredErrorMsg: "Preencha o usuário",
              onEdit: (value) {
                controller.setUsername(value);
              },
            ),
            SizedBox(height: 8.0),
            Observer(builder: (_) {
              return TextFormRequired(
                initialValue: controller.loginModel.password,
                labelText: "Senha",
                requiredErrorMsg: "Preencha a senha",
                obscureText: controller.showPassword == false ? true : false,
                onEdit: (value) {
                  controller.setPassword(value);
                },
                suffixIcon: GestureDetector(
                  child: Icon(
                    controller.showPassword == false
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: Colors.black,
                  ),
                  onTap: () {
                    controller.setShowPassword();
                  },
                ),
              );
            }),
            SizedBox(height: 24.0),
            Observer(
              builder: (_) {
                if (controller.screenStateEnum == ScreenStateEnum.LOADING) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      LoginLoadingButton(),
                      Divider(),
                      CreateAccountButton(
                        onPressed: () {},
                      ),
                    ],
                  );
                } else {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      LoginButton(
                        onPressed: () {
                          if (widget._formKey.currentState.validate()) {
                            controller.login();
                          }
                        },
                      ),
                      Divider(),
                      CreateAccountButton(
                        onPressed: () {},
                      ),
                    ],
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
