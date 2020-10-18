import 'package:Estimulo/src/modules/login/models/address_model.dart';
import 'package:Estimulo/src/shared/adapters/adapter_base.dart';
import 'package:Estimulo/src/shared/models/model.dart';
import 'package:Estimulo/src/shared/repositories/online_repository.dart';
import 'package:dio/dio.dart';

class AddressRepository extends OnlineRepository<AddressModel> {
  AddressRepository(Dio dio, JsonAdapter<Model> jsonAdapter, Uri uri)
      : super(dio, jsonAdapter, uri);

  @override
  Future<List<AddressModel>> getWithFilter(Map<String, String> queryParams,
      {String path}) async {
    List<AddressModel> addressModel = [];
    String url = super.buildUrl(queryParams: queryParams, path: path);
    try {
      Response response = await super.dio.get(url.toString());
      if (response.data["erro"] != null && response.data["erro"] == true) {
        print("NACEP");
      }
      addressModel.add(jsonAdapter.fromJson(response.data));
      return addressModel;
    } catch (ex) {}
  }
}
