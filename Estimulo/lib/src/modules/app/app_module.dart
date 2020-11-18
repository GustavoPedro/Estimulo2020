import 'package:Estimulo/src/modules/login/models/session_model.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

class AppModule {
  static final _getIt = GetIt.instance;

  static void registerDependencies() {
    _getIt.registerSingleton<SessionModel>(
      SessionModel(),
    );
    _getIt.registerSingleton<Dio>(
      Dio(
        BaseOptions(baseUrl: 'http://192.168.1.103:5000/api'),
      ),
    );
  }
}
