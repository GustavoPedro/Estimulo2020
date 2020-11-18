import 'package:Estimulo/src/modules/training/adapters/module_adapter.dart';
import 'package:Estimulo/src/modules/training/models/module.dart';
import 'package:Estimulo/src/shared/repositories/online_repository.dart';
import 'package:get_it/get_it.dart';

import 'adapters/module_content_adapter.dart';

class TrainingModule {
  // ignore: unused_field
  static final _getIt = GetIt.instance;

  static void registerDependencies() {
    _getIt.registerFactory(() => ModuleAdapter());
    _getIt.registerFactory(() => ModuleContentAdapter());
    _getIt.registerFactory(
      () => OnlineRepository<ModuleModel>(
        _getIt.get<ModuleAdapter>(),
        Uri(host: "192.168.1.103", port: 5000, path: "/api/Modules"),
      ),
    );
  }
}
