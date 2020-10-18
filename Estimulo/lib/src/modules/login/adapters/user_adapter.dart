import 'package:Estimulo/src/modules/login/adapters/address_adapter.dart';
import 'package:Estimulo/src/modules/login/models/user_model.dart';
import 'package:Estimulo/src/shared/adapters/adapter_base.dart';

class UserAdapter extends JsonAdapter<UserModel> {
  final AddressAdapter adressAdapter;

  UserAdapter() : this.adressAdapter = AddressAdapter();

  @override
  UserModel fromJson(Map<String, dynamic> json) {
    return UserModel(
        nome: json['nome'],
        telefone: json['telefone'],
        email: json['email'],
        senha: json['senha'],
        addressModel: json['address_model'] != null
            ? this.adressAdapter.fromJson(json['address_model'])
            : null);
  }

  @override
  Map<String, dynamic> toJson(UserModel model) {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = model.nome;
    data['telefone'] = model.telefone;
    data['email'] = model.email;
    data['senha'] = model.senha;
    if (model.addressModel != null) {
      data['address_model'] = adressAdapter.toJson(model.addressModel);
    }
    return data;
  }
}
