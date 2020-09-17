import 'package:mobx/mobx.dart';

part 'cadastro_controller.g.dart';

class CadastroController = _CadastroControllerBase with _$CadastroController;

abstract class _CadastroControllerBase with Store {
  final int totalPages = 4;
  @observable
  int companyDataPage = 0;

  @observable
  String razaoSocial = "";

  @action
  setRazaoSocial(String text) {
    razaoSocial = text;
  }

  @action
  nextPage() {
    if (companyDataPage < totalPages) {
      companyDataPage++;
    }
  }

  @action
  previousPage() {
    if (companyDataPage > 0) {
      companyDataPage--;
    }
  }
}
