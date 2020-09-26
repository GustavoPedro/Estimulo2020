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
      () => LoginController(
        _getIt.get<LoginRepository>(),
      ),
    );
  }
}
