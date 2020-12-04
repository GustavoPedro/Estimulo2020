import 'package:Estimulo/src/modules/login/models/address_model.dart';
import 'package:Estimulo/src/shared/adapters/adapter_base.dart';
import 'package:Estimulo/src/shared/models/model.dart';
import 'package:Estimulo/src/shared/repositories/online_repository.dart';
import 'package:dio/dio.dart';

class AddressRepository extends OnlineRepository<AddressModel> {
  AddressRepository(JsonAdapter<Model> jsonAdapter, Uri uri)
      : super(jsonAdapter, uri);

  @override
  Future<List<AddressModel>> getWithFilter(Map<String, String> queryParams,
      {String path}) async {
    List<AddressModel> addressModel = [];
    String url = this.buildUrl(queryParams: queryParams, path: path);
    try {
      Response response = await super.dio.get(url);
      if (response.data["erro"] != null && response.data["erro"] == true) {
        print("NACEP");
      }
      addressModel.add(jsonAdapter.fromJson(response.data));
    } catch (ex) {
      print(ex);
    }
    return addressModel;
  }

  @override
  String buildUrl({Map<String, String> queryParams, String path}) {
    Uri uri = Uri.https(
        this.uri.host,
        path == null || path.isEmpty ? this.uri.path : path,
        queryParams == null || queryParams.isEmpty
            ? this.uri.queryParameters
            : queryParams);
    return uri.toString();
  }
}
