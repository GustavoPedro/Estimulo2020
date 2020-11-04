import 'package:Estimulo/src/modules/login/models/login_model.dart';
import 'package:Estimulo/src/modules/login/models/session_state_model.dart';
import 'package:Estimulo/src/modules/login/repository/login_repository.dart';
import 'package:Estimulo/src/shared/enuns/screen_state_enum.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  final LoginRepository _loginRepository;

  @observable
  LoginModel loginModel = LoginModel();

  @observable
  SessionStateEnum session = SessionStateEnum.INITIAL;

  @observable
  ScreenStateEnum screenStateEnum = ScreenStateEnum.INITIAL;

  @observable
  bool showPassword = false;

  _LoginControllerBase(this._loginRepository);

  @action
  setShowPassword() {
    showPassword = !showPassword;
  }

  @action
  setPassword(String text) {
    loginModel.password = text;
  }

  @action
  setUsername(String text) {
    loginModel.userName = text;
  }

  @action
  login() async {
    try {
      screenStateEnum = ScreenStateEnum.LOADING;
      bool isLogged = await _loginRepository.signIn(
          username: loginModel.userName, password: loginModel.password);
      isLogged = true;
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
