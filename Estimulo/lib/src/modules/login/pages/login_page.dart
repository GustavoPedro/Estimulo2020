import 'package:Estimulo/src/modules/login/controllers/login_controller.dart';
import 'package:Estimulo/src/modules/login/widgets/create_account_button.dart';
import 'package:Estimulo/src/modules/login/widgets/login_button.dart';
import 'package:Estimulo/src/modules/login/widgets/login_loading.dart';
import 'package:Estimulo/src/shared/enuns/screen_state_enum.dart';
import 'package:Estimulo/src/shared/widgets/text_form_with_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  bool _showPassword = false;
  String username;
  String userPassword;
  BuildContext dialogContext;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final _formKey = GlobalKey<FormState>(); // Keys

  Widget renderForm(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final image = SizedBox(
      width: width,
      height: 200,
      child: Image.asset("lib/assets/images/logo.jpg"),
    );

    final user = TextFormWithDecoration(
      labelText: "Usuário *",
      onValidate: (val) {
        if (val.isEmpty) {
          return "Preencha o usuário";
        }
      },
      onSaved: (value) {
        username = value;
      },
    );

    final password = TextFormWithDecoration(
      labelText: "Senha *",
      obscureText: _showPassword == false ? true : false,
      onSaved: (value) {
        userPassword = value;
      },
      onValidate: (val) {
        if (val.isEmpty) {
          return "Preencha a senha";
        }
      },
      suffixIcon: GestureDetector(
        child: Icon(
          _showPassword == false ? Icons.visibility_off : Icons.visibility,
          color: Colors.black,
        ),
        onTap: () {
          setState(() {
            _showPassword = !_showPassword;
          });
        },
      ),
    );

    return Form(
      key: _formKey,
      child: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            image,
            SizedBox(height: 48.0),
            user,
            SizedBox(height: 8.0),
            password,
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
                          if (_formKey.currentState.validate()) {
                            _formKey.currentState.save();
                            controller.login(username, userPassword);
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(key: _scaffoldKey, body: renderForm(context));
  }
}
