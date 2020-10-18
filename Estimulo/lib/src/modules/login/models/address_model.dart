import 'package:Estimulo/src/shared/models/model.dart';

class AddressModel extends Model {
  String cep;
  String logradouro;
  String bairro;
  String localidade;
  String uf;
  String numero;

  AddressModel(
      {this.cep,
      this.logradouro,
      this.bairro,
      this.localidade,
      this.uf,
      this.numero});
}
