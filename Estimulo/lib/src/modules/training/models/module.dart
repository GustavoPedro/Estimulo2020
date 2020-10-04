class ModuleModel {
  int moduleId;
  String moduleName;
  String moduleImage;

  ModuleModel({this.moduleId, this.moduleName, this.moduleImage});

  ModuleModel.fromJson(Map<String, dynamic> json) {
    moduleId = json['moduleId'];
    moduleName = json['moduleName'];
    moduleImage = json['moduleImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['moduleId'] = this.moduleId;
    data['moduleName'] = this.moduleName;
    data['moduleImage'] = this.moduleImage;
    return data;
  }
}
