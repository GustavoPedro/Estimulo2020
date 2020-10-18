import 'package:Estimulo/src/modules/login/controllers/login_controller.dart';
import 'package:Estimulo/src/modules/login/pages/create_account_page.dart';
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
  final LoginController controller;
  const LoginFormWidget(
      {Key key,
      @required GlobalKey<FormState> formKey,
      @required this.controller})
      : _formKey = formKey,
        super(key: key);
  @override
  _LoginFormWidgetState createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  List<ReactionDisposer> _disposers;

  @override
  void didChangeDependencies() {
    _disposers ??= [];
    super.didChangeDependencies();
    _disposers ??= [
      reaction((_) => widget.controller.screenStateEnum,
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
              initialValue: widget.controller.loginModel.userName,
              labelText: "Usuário",
              requiredErrorMsg: "Preencha o usuário",
              onEdit: (value) {
                widget.controller.setUsername(value);
              },
            ),
            SizedBox(height: 8.0),
            Observer(builder: (_) {
              return TextFormRequired(
                initialValue: widget.controller.loginModel.password,
                labelText: "Senha",
                requiredErrorMsg: "Preencha a senha",
                obscureText:
                    widget.controller.showPassword == false ? true : false,
                onEdit: (value) {
                  widget.controller.setPassword(value);
                },
                suffixIcon: GestureDetector(
                  child: Icon(
                    widget.controller.showPassword == false
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: Colors.black,
                  ),
                  onTap: () {
                    widget.controller.setShowPassword();
                  },
                ),
              );
            }),
            SizedBox(height: 24.0),
            Observer(
              builder: (_) {
                if (widget.controller.screenStateEnum ==
                    ScreenStateEnum.LOADING) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      LoginLoadingButton(),
                      Divider(),
                      CreateAccountButton(),
                    ],
                  );
                } else {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      LoginButton(
                        onPressed: () {
                          if (widget._formKey.currentState.validate()) {
                            widget.controller.login();
                          }
                        },
                      ),
                      Divider(),
                      CreateAccountButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CreateAccountPage(),
                            ),
                          );
                        },
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
