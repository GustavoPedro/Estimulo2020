import 'package:Estimulo/src/modules/login/models/session_state_model.dart';
import 'package:Estimulo/src/modules/login/repository/login_repository.dart';
import 'package:Estimulo/src/shared/enuns/screen_state_enum.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  final LoginRepository _loginRepository;

  @observable
  SessionStateEnum session = SessionStateEnum.INITIAL;

  @observable
  ScreenStateEnum screenStateEnum = ScreenStateEnum.INITIAL;

  _LoginControllerBase(this._loginRepository);

  @action
  login(String username, String password) async {
    try {
      screenStateEnum = ScreenStateEnum.LOADING;
      bool isLogged =
          await _loginRepository.signIn(username: "Bune", password: "Cap");
      print(isLogged);
      if (isLogged) {
        screenStateEnum = ScreenStateEnum.SUCCESS;
        session = SessionStateEnum.LOGIN_SUCCESS;
      } else {
        screenStateEnum = ScreenStateEnum.ERROR;
      }
    } catch (e) {
      screenStateEnum = ScreenStateEnum.ERROR;
    }
  }

  @action
  logout() async {
    try {
      _loginRepository.deleteToken();
      session = SessionStateEnum.LOGOUT;
    } catch (e) {
      session = SessionStateEnum.LOGIN_ERROR;
    }
  }
}
