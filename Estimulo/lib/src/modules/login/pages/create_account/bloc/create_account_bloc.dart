import 'dart:async';

import 'package:Estimulo/src/modules/login/models/address_model.dart';
import 'package:Estimulo/src/modules/login/repository/address_repository.dart';
import 'package:Estimulo/src/modules/login/view_models/account_viewmodel.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'create_account_event.dart';
part 'create_account_state.dart';

class CreateAccountBloc extends Bloc<CreateAccountEvent, CreateAccountState> {
  final AddressRepository addressOnlineRepository;
  String _lastTypedCep;

  CreateAccountBloc({@required this.addressOnlineRepository})
      : super(CreateAccountInitial());

  @override
  Stream<CreateAccountState> mapEventToState(
    CreateAccountEvent event,
  ) async* {
    if (event is SetAddressByCep) {
      final AccountViewModel accountViewModel = event.accountViewModel;
      String cep = accountViewModel.cep.text;
      if (cep.isNotEmpty && cep != _lastTypedCep) {
        _lastTypedCep = cep;
        List<AddressModel> addressModelList = await addressOnlineRepository
            .getWithFilter({}, path: '/ws/$cep/json/');
        AddressModel addressModel = addressModelList[0];
        if (addressModel != null) {
          accountViewModel.bairro.text = addressModel.bairro;
          accountViewModel.cidade.text = addressModel.localidade;
          accountViewModel.rua.text = addressModel.logradouro;
          accountViewModel.uf.text = addressModel.uf;
        }
      }
    }
  }
}
