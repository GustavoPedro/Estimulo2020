import 'package:Estimulo/src/modules/weaknesses/controller/cadastro_controller.dart';
import 'package:get_it/get_it.dart';

class WeaknessesModule {
  static final _getIt = GetIt.instance;

  static void registerDependencies() {
    _getIt.registerFactory<CadastroController>(() => CadastroController());
  }
}
