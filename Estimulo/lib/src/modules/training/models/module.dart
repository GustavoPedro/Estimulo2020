import 'package:Estimulo/src/shared/models/model.dart';

import 'module_content.dart';

class ModuleModel extends Model {
  int id;
  String nome;
  String imagem;
  List<ModuleContentModel> moduloDetalhes;

  ModuleModel({this.id, this.nome, this.imagem, this.moduloDetalhes});
}
