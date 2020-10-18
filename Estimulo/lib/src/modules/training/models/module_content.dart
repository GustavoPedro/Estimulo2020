import 'package:Estimulo/src/shared/models/model.dart';

class ModuleContent extends Model {
  int moduleId;
  String type;
  String link;
  String title;

  ModuleContent({this.moduleId, this.type, this.link, this.title});

  ModuleContent.fromJson(Map<String, dynamic> json) {
    moduleId = json['moduleId'];
    type = json['type'];
    link = json['link'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['moduleId'] = this.moduleId;
    data['type'] = this.type;
    data['link'] = this.link;
    data['title'] = this.title;
    return data;
  }
}
