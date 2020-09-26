import 'package:get_it/get_it.dart';

import 'controllers/home_controller.dart';

class HomeModule {
  static final _getIt = GetIt.instance;

  static void registerDependencies() {
    _getIt.registerFactory<HomeController>(() => HomeController());
  }
}
