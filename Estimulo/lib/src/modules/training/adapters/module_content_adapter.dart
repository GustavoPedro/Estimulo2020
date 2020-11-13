import 'package:Estimulo/src/modules/training/models/module_content.dart';
import 'package:Estimulo/src/shared/adapters/adapter_base.dart';

class ModuleContentAdapter extends JsonAdapter<ModuleContentModel> {
  Map<String, dynamic> toJson(ModuleContentModel model) {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = model.id;
    data['Nome'] = model.nome;
    data['Link'] = model.link;
    data['Descricao'] = model.descricao;
    data['Tipo'] = model.tipo;
    return data;
  }

  @override
  ModuleContentModel fromJson(Map<String, dynamic> json) {
    return ModuleContentModel(
      id: json['Id'],
      link: json['Link'],
      nome: json['Nome'],
      descricao: json['Descricao'],
      tipo: json['Tipo'],
    );
  }
}
