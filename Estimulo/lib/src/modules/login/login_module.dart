import 'package:Estimulo/src/modules/login/pages/authentication_page.dart';
import 'package:dio/dio.dart';
import 'models/session_model.dart';
import 'repository/login_repository.dart';
import 'controllers/login_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => LoginRepository(i.get<Dio>(), i.get<SessionModel>())),
        Bind((i) => LoginController(i.get<LoginRepository>())),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (context, args) => AuthenticationPage()),
      ];

  static Inject get to => Inject<LoginModule>.of();
}
