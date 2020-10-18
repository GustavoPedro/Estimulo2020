import 'package:Estimulo/src/shared/models/model.dart';

abstract class JsonAdapter<T extends Model> {
  Map<String, dynamic> toJson(T model);
  T fromJson(Map<String, dynamic> json);
}
