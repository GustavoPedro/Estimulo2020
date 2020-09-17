import 'package:Estimulo/src/modules/cadastro/controller/cadastro_controller.dart';
import 'package:Estimulo/src/modules/cadastro/pages/comp_info_page.dart';
import 'package:Estimulo/src/modules/cadastro/pages/info_page.dart';
import 'package:Estimulo/src/modules/cadastro/pages/user_info_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CadastroModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CadastroController()),
      ];

  @override
  List<Router> get routers => [
        Router("/", child: (_, args) => InfoPage()),
        Router("/userinfo", child: (_, args) => UserInfoPage()),
        Router("/compinfo", child: (_, args) => CompInfoPage()),
      ];

  static Inject get to => Inject<CadastroModule>.of();
}
