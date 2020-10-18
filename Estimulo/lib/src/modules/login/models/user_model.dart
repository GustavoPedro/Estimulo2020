import 'package:Estimulo/src/modules/login/models/address_model.dart';
import 'package:Estimulo/src/shared/models/model.dart';

class UserModel extends Model {
  String nome;
  String telefone;
  String email;
  String senha;
  AddressModel addressModel;

  UserModel(
      {this.nome, this.telefone, this.email, this.senha, this.addressModel});
}
