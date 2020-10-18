import 'package:Estimulo/src/modules/login/models/address_model.dart';
import 'package:Estimulo/src/modules/login/repository/address_repository.dart';
import 'package:Estimulo/src/modules/login/view_models/account_viewmodel.dart';
import 'package:mobx/mobx.dart';

part 'create_account_controller.g.dart';

class CreateAccountController = _CreateAccountControllerBase
    with _$CreateAccountController;

abstract class _CreateAccountControllerBase with Store {
  final AccountViewModel accountViewModel;
  final AddressRepository _addressOnlineRepository;
  String _lastTypedCep;

  _CreateAccountControllerBase(
      this.accountViewModel, this._addressOnlineRepository);

  setAddressByCep() async {
    String cep = accountViewModel.cep.text;
    if (cep.isNotEmpty && cep != _lastTypedCep) {
      _lastTypedCep = cep;
      List<AddressModel> addressModelList = await _addressOnlineRepository
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
