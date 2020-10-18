import 'package:Estimulo/src/shared/adapters/adapter_base.dart';
import 'package:Estimulo/src/shared/models/model.dart';
import 'package:dio/dio.dart';

class OnlineRepository<T extends Model> {
  final Dio dio;
  final JsonAdapter jsonAdapter;
  final Uri uri;

  OnlineRepository(this.dio, this.jsonAdapter, this.uri);

  Future<List<T>> get({Map<String, String> queryParams, String path}) async {
    try {
      String url = buildUrl(queryParams: queryParams, path: path);
      Response response = await dio.get(url);
      return (response.data["member"] as List)
          .map((e) => jsonAdapter.fromJson(e))
          .toList();
    } catch (ex) {
      print(ex.toString());
      rethrow;
    }
  }

  Future<List<T>> getWithFilter(Map<String, String> queryParams,
      {String path}) async {
    try {
      String url = buildUrl(queryParams: queryParams, path: path);
      Response response = await dio.get(url);
      return (response.data["member"] as List)
          .map((e) => jsonAdapter.fromJson(e))
          .toList();
    } catch (ex) {
      rethrow;
    }
  }

  Future<int> insert(T model,
      {Map<String, String> queryParams, String path}) async {
    try {
      String url = buildUrl(queryParams: queryParams, path: path);
      Response response = await dio.post(url, data: jsonAdapter.toJson(model));
      if (response?.statusCode == 200 || response?.statusCode == 201) {
        return response?.statusCode;
      }
      throw Exception("Não foi possivel criar");
    } catch (ex) {
      rethrow;
    }
  }

  Future<int> update(T model, Map<String, String> queryParams,
      {String path}) async {
    try {
      String url = buildUrl(queryParams: queryParams, path: path);
      Response response = await dio.post(url, data: jsonAdapter.toJson(model));
      if (response?.statusCode == 200 || response?.statusCode == 201) {
        return response?.statusCode;
      }
      throw Exception("Não foi possivel atualizar");
    } catch (ex) {
      rethrow;
    }
  }

  String buildUrl({Map<String, String> queryParams, String path}) {
    Uri uri = Uri.http(
        this.uri.host,
        path == null || path.isEmpty ? null : path,
        queryParams == null || queryParams.isEmpty ? null : queryParams);
    return uri.toString();
  }
}
