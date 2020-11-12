import 'package:Estimulo/src/modules/training/models/module.dart';
import 'package:Estimulo/src/shared/adapters/adapter_base.dart';

class ModuleAdapter extends JsonAdapter<ModuleModel> {
  Map<String, dynamic> toJson(ModuleModel model) {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = model.id;
    data['nome'] = model.nome;
    data['imagem'] = model.imagem;
    return data;
  }

  @override
  ModuleModel fromJson(Map<String, dynamic> json) {
    return ModuleModel(
        id: json['Id'],
        //imagem: "data:image/jpeg;base64," + json['Imagem'],
        imagem: json['Imagem'],
        nome: json['Nome']);
  }
}
