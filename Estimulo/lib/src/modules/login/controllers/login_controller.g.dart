// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginController on _LoginControllerBase, Store {
  final _$sessionAtom = Atom(name: '_LoginControllerBase.session');

  @override
  SessionStateEnum get session {
    _$sessionAtom.reportRead();
    return super.session;
  }

  @override
  set session(SessionStateEnum value) {
    _$sessionAtom.reportWrite(value, super.session, () {
      super.session = value;
    });
  }

  final _$screenStateEnumAtom =
      Atom(name: '_LoginControllerBase.screenStateEnum');

  @override
  ScreenStateEnum get screenStateEnum {
    _$screenStateEnumAtom.reportRead();
    return super.screenStateEnum;
  }

  @override
  set screenStateEnum(ScreenStateEnum value) {
    _$screenStateEnumAtom.reportWrite(value, super.screenStateEnum, () {
      super.screenStateEnum = value;
    });
  }

  final _$loginAsyncAction = AsyncAction('_LoginControllerBase.login');

  @override
  Future login(String username, String password) {
    return _$loginAsyncAction.run(() => super.login(username, password));
  }

  final _$logoutAsyncAction = AsyncAction('_LoginControllerBase.logout');

  @override
  Future logout() {
    return _$logoutAsyncAction.run(() => super.logout());
  }

  @override
  String toString() {
    return '''
session: ${session},
screenStateEnum: ${screenStateEnum}
    ''';
  }
}
