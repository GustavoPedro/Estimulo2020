import 'package:Estimulo/src/modules/login/pages/create_account/bloc/create_account_bloc.dart';
import 'package:Estimulo/src/modules/login/pages/create_account/create_account_page.dart';
import 'package:Estimulo/src/modules/login/pages/login/bloc/login_bloc.dart';
import 'package:Estimulo/src/modules/login/repository/address_repository.dart';
import 'package:Estimulo/src/shared/widgets/text_form_required.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'create_account_button.dart';
import 'login_button.dart';
import 'login_loading.dart';

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
  final TextEditingController email = TextEditingController();
  final TextEditingController senha = TextEditingController();
  bool showPassword = false;

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
              textEditingController: email,
              labelText: "Usuário",
              requiredErrorMsg: "Preencha o usuário",
            ),
            SizedBox(height: 8.0),
            TextFormRequired(
              textEditingController: senha,
              labelText: "Senha",
              requiredErrorMsg: "Preencha a senha",
              obscureText: showPassword == false ? true : false,
              suffixIcon: GestureDetector(
                child: Icon(
                  showPassword == false
                      ? Icons.visibility_off
                      : Icons.visibility,
                  color: Colors.black,
                ),
                onTap: () {
                  setState(() {
                    showPassword = true;
                  });
                },
              ),
            ),
            SizedBox(height: 24.0),
            BlocBuilder<LoginBloc, LoginState>(
              builder: (context, state) {
                if (state is LoginInProgress) {
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
                            context.bloc<LoginBloc>().add(
                                  LoginButtonPressed(
                                    password: senha.text,
                                    username: email.text,
                                  ),
                                );
                          }
                        },
                      ),
                      Divider(),
                      CreateAccountButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BlocProvider(
                                create: (context) => CreateAccountBloc(
                                  addressOnlineRepository:
                                      GetIt.instance.get<AddressRepository>(),
                                ),
                                child: CreateAccountPage(),
                              ),
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
