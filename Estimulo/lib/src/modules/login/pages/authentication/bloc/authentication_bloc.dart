import 'dart:async';

import 'package:Estimulo/src/modules/login/repository/login_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final LoginRepository repository;

  AuthenticationBloc({@required this.repository})
      : assert(repository != null),
        super(AuthenticationInitial());

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    if (event is AuthenticationStarted) {
      yield AuthenticationInProgress();
      final bool hasToken = await repository.hasToken();

      if (hasToken) {
        yield AuthenticationSuccess();
      } else {
        yield AuthenticationFailure();
      }
    }

    if (event is AuthenticationLoggedIn) {
      yield AuthenticationSuccess();
    }

    if (event is AuthenticationLoggedOut) {
      repository.deleteToken();
      yield AuthenticationFailure();
    }
  }
}
