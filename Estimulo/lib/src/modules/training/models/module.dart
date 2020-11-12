import 'package:Estimulo/src/shared/models/model.dart';

import 'module_content.dart';

class ModuleModel extends Model {
  int id;
  String nome;
  String imagem;
  List<ModuleContent> moduloDetalhes;

  ModuleModel({this.id, this.nome, this.imagem, this.moduloDetalhes});

  ModuleModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    imagem = json['imagem'];
    if (json['moduloDetalhes'] != null) {
      moduloDetalhes = new List<ModuleContent>();
      json['moduloDetalhes'].forEach((v) {
        moduloDetalhes.add(new ModuleContent.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['imagem'] = this.imagem;
    if (this.moduloDetalhes != null) {
      data['moduloDetalhes'] =
          this.moduloDetalhes.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
