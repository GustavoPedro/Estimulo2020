import 'package:Estimulo/src/modules/training/adapters/module_content_adapter.dart';
import 'package:Estimulo/src/modules/training/models/module.dart';
import 'package:Estimulo/src/modules/training/models/module_content.dart';
import 'package:Estimulo/src/shared/adapters/adapter_base.dart';
import 'package:get_it/get_it.dart';

class ModuleAdapter extends JsonAdapter<ModuleModel> {
  final ModuleContentAdapter moduleContentAdapter;

  ModuleAdapter() : moduleContentAdapter = GetIt.I.get<ModuleContentAdapter>();

  Map<String, dynamic> toJson(ModuleModel model) {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = model.id;
    data['Nome'] = model.nome;
    data['Imagem'] = model.imagem;
    if (model.moduloDetalhes != null) {
      data['ModuleDetails'] = model.moduloDetalhes
          .map(
            (v) => moduleContentAdapter.toJson(v),
          )
          .toList();
    }
    return data;
  }

  @override
  ModuleModel fromJson(Map<String, dynamic> json) {
    List<ModuleContentModel> moduloDetalhes = <ModuleContentModel>[];
    print(json['ModuleDetails']);
    if (json['ModuleDetails'] != null) {
      json['ModuleDetails'].forEach((v) {
        moduloDetalhes.add(moduleContentAdapter.fromJson(v));
      });
    }
    return ModuleModel(
      id: json['Id'],
      nome: json['Nome'],
      imagem: json['Imagem'],
      moduloDetalhes: moduloDetalhes,
    );
  }
}
