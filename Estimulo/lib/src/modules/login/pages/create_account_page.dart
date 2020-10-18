import 'package:Estimulo/src/modules/login/controllers/create_account_controller.dart';
import 'package:Estimulo/src/shared/app_colors.dart';
import 'package:Estimulo/src/shared/widgets/page_container.dart';
import 'package:Estimulo/src/shared/widgets/text_form_radio_picker.dart';
import 'package:Estimulo/src/shared/widgets/text_form_required.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class CreateAccountPage extends StatelessWidget {
  final CreateAccountController _accountController =
      GetIt.I.get<CreateAccountController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Cadastro"),
      ),
      body: PageContainer(
        child: SingleChildScrollView(
          child: Form(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Column(
                children: [
                  TextFormRequired(
                    textEditingController:
                        _accountController.accountViewModel.nome,
                    labelText: "Nome Completo",
                    requiredErrorMsg: "Preencha o nome completo",
                  ),
                  Focus(
                    child: TextFormRequired(
                      textEditingController:
                          _accountController.accountViewModel.cep,
                      labelText: "CEP",
                      requiredErrorMsg: "Preencha o CEP",
                    ),
                    onFocusChange: (hasFocus) {
                      if (!hasFocus) {
                        _accountController.setAddressByCep();
                      }
                    },
                  ),
                  TextFormRequired(
                    textEditingController:
                        _accountController.accountViewModel.rua,
                    labelText: "Rua",
                    requiredErrorMsg: "Preencha a Rua",
                  ),
                  TextFormRequired(
                    textEditingController:
                        _accountController.accountViewModel.bairro,
                    labelText: "Bairro",
                    requiredErrorMsg: "Preencha o Bairro",
                  ),
                  TextFormRequired(
                    textEditingController:
                        _accountController.accountViewModel.cidade,
                    labelText: "Cidade",
                    requiredErrorMsg: "Preencha a Cidade",
                  ),
                  TextFormRadioPickerWidget(
                    textEditingController:
                        _accountController.accountViewModel.uf,
                    pickerTitle: "UF",
                    labelText: "UF",
                    options: ["MG", "SP"],
                  ),
                  TextFormRequired(
                    textEditingController:
                        _accountController.accountViewModel.numero,
                    labelText: "Numero",
                    requiredErrorMsg: "Preencha o Número",
                  ),
                  TextFormRequired(
                    textEditingController:
                        _accountController.accountViewModel.telefone,
                    labelText: "Telefone",
                    requiredErrorMsg: "Preencha o telefone",
                  ),
                  TextFormRequired(
                    textEditingController:
                        _accountController.accountViewModel.email,
                    labelText: "E-mail",
                    requiredErrorMsg: "Preencha o E-mail",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: AppColors.primary,
        child: Icon(Icons.save),
      ),
    );
  }
}
