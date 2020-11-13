import 'package:Estimulo/src/shared/models/model.dart';

class ModuleContentModel extends Model {
  int id;
  String tipo;
  String link;
  String nome;
  String descricao;

  ModuleContentModel({
    this.id,
    this.tipo,
    this.link,
    this.nome,
    this.descricao,
  });
}
