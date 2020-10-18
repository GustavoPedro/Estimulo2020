import 'package:Estimulo/src/modules/login/adapters/address_adapter.dart';
import 'package:Estimulo/src/modules/login/controllers/create_account_controller.dart';
import 'package:Estimulo/src/modules/login/repository/address_repository.dart';
import 'package:Estimulo/src/modules/login/view_models/account_viewmodel.dart';
import 'package:dio/dio.dart';
import 'models/session_model.dart';
import 'repository/login_repository.dart';
import 'controllers/login_controller.dart';

import 'package:Estimulo/src/modules/login/models/session_model.dart';
import 'package:get_it/get_it.dart';

class LoginModule {
  static final _getIt = GetIt.instance;

  static void registerDependencies() {
    _getIt.registerFactory(
      () => LoginRepository(
        _getIt.get<Dio>(),
        _getIt.get<SessionModel>(),
      ),
    );
    _getIt.registerFactory(
      () => LoginController(_getIt.get<LoginRepository>()),
    );

    _getIt.registerFactory(() => AddressAdapter());

    _getIt.registerFactory(
      () => AddressRepository(
        _getIt.get<Dio>(),
        _getIt.get<AddressAdapter>(),
        Uri.https("viacep.com.br", ""),
      ),
    );

    _getIt.registerFactory(() => CreateAccountController(
        AccountViewModel(), _getIt.get<AddressRepository>()));
  }
}
