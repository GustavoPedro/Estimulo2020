// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cadastro_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CadastroController on _CadastroControllerBase, Store {
  final _$companyDataPageAtom =
      Atom(name: '_CadastroControllerBase.companyDataPage');

  @override
  int get companyDataPage {
    _$companyDataPageAtom.reportRead();
    return super.companyDataPage;
  }

  @override
  set companyDataPage(int value) {
    _$companyDataPageAtom.reportWrite(value, super.companyDataPage, () {
      super.companyDataPage = value;
    });
  }

  final _$razaoSocialAtom = Atom(name: '_CadastroControllerBase.razaoSocial');

  @override
  String get razaoSocial {
    _$razaoSocialAtom.reportRead();
    return super.razaoSocial;
  }

  @override
  set razaoSocial(String value) {
    _$razaoSocialAtom.reportWrite(value, super.razaoSocial, () {
      super.razaoSocial = value;
    });
  }

  final _$_CadastroControllerBaseActionController =
      ActionController(name: '_CadastroControllerBase');

  @override
  dynamic setRazaoSocial(String text) {
    final _$actionInfo = _$_CadastroControllerBaseActionController.startAction(
        name: '_CadastroControllerBase.setRazaoSocial');
    try {
      return super.setRazaoSocial(text);
    } finally {
      _$_CadastroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic nextPage() {
    final _$actionInfo = _$_CadastroControllerBaseActionController.startAction(
        name: '_CadastroControllerBase.nextPage');
    try {
      return super.nextPage();
    } finally {
      _$_CadastroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic previousPage() {
    final _$actionInfo = _$_CadastroControllerBaseActionController.startAction(
        name: '_CadastroControllerBase.previousPage');
    try {
      return super.previousPage();
    } finally {
      _$_CadastroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
companyDataPage: ${companyDataPage},
razaoSocial: ${razaoSocial}
    ''';
  }
}
