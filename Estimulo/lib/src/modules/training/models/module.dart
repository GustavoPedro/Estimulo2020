import 'package:Estimulo/src/shared/models/model.dart';

import 'module_content.dart';

class ModuleModel extends Model {
  int moduleId;
  String moduleName;
  String moduleImage;
  List<ModuleContent> moduleContents;

  ModuleModel(
      {this.moduleId, this.moduleName, this.moduleImage, this.moduleContents});

  ModuleModel.fromJson(Map<String, dynamic> json) {
    moduleId = json['moduleId'];
    moduleName = json['moduleName'];
    moduleImage = json['moduleImage'];
    if (json['moduleContents'] != null) {
      moduleContents = new List<ModuleContent>();
      json['moduleContents'].forEach((v) {
        moduleContents.add(new ModuleContent.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['moduleId'] = this.moduleId;
    data['moduleName'] = this.moduleName;
    data['moduleImage'] = this.moduleImage;
    if (this.moduleContents != null) {
      data['moduleContents'] =
          this.moduleContents.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
