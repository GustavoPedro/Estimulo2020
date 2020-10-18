import 'package:Estimulo/src/modules/login/models/address_model.dart';
import 'package:Estimulo/src/shared/adapters/adapter_base.dart';

class AddressAdapter extends JsonAdapter<AddressModel> {
  Map<String, dynamic> toJson(AddressModel model) {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cep'] = model.cep;
    data['logradouro'] = model.logradouro;
    data['bairro'] = model.bairro;
    data['localidade'] = model.localidade;
    data['uf'] = model.uf;
    data['numero'] = model.numero;
    return data;
  }

  @override
  AddressModel fromJson(Map<String, dynamic> json) {
    return AddressModel(
      cep: json['cep'],
      logradouro: json['logradouro'],
      bairro: json['bairro'],
      localidade: json['localidade'],
      uf: json['uf'],
      numero: json['numero'],
    );
  }
}
