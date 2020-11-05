import 'dart:async';

import 'package:Estimulo/src/modules/login/pages/authentication/bloc/authentication_bloc.dart';
import 'package:Estimulo/src/modules/login/repository/login_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepository repository;
  final AuthenticationBloc authenticationBloc;

  LoginBloc({
    this.repository,
    this.authenticationBloc,
  })  : assert(repository != null),
        assert(authenticationBloc != null),
        super(LoginInitial());

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    if (event is LoginButtonPressed) {
      yield LoginInProgress();

      try {
        bool loginSuccess = await repository.signIn(
          username: event.username,
          password: event.password,
        );
        if (loginSuccess) {
          authenticationBloc.add(AuthenticationLoggedIn());
          yield LoginSuccess();
        } else {
          yield LoginFailure(error: "Não foi possível efetuar login");
        }
      } catch (error) {
        yield LoginFailure(error: error.toString());
      }
    }
  }
}
