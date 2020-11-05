import 'package:Estimulo/src/modules/login/controllers/create_account_controller.dart';
import 'package:Estimulo/src/modules/login/pages/create_account/bloc/create_account_bloc.dart';
import 'package:Estimulo/src/modules/login/view_models/account_viewmodel.dart';
import 'package:Estimulo/src/shared/app_colors.dart';
import 'package:Estimulo/src/shared/widgets/page_container.dart';
import 'package:Estimulo/src/shared/widgets/text_form_radio_picker.dart';
import 'package:Estimulo/src/shared/widgets/text_form_required.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class CreateAccountPage extends StatelessWidget {
  final CreateAccountController _accountController =
      GetIt.I.get<CreateAccountController>();

  final AccountViewModel accountViewModel = AccountViewModel();

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
                    textEditingController: accountViewModel.nome,
                    labelText: "Nome Completo",
                    requiredErrorMsg: "Preencha o nome completo",
                  ),
                  Focus(
                    child: TextFormRequired(
                      textEditingController: accountViewModel.cep,
                      labelText: "CEP",
                      requiredErrorMsg: "Preencha o CEP",
                    ),
                    onFocusChange: (hasFocus) {
                      if (!hasFocus) {
                        BlocProvider.of<CreateAccountBloc>(context)
                            .add(SetAddressByCep(accountViewModel));
                      }
                    },
                  ),
                  TextFormRequired(
                    textEditingController: accountViewModel.rua,
                    labelText: "Rua",
                    requiredErrorMsg: "Preencha a Rua",
                  ),
                  TextFormRequired(
                    textEditingController: accountViewModel.bairro,
                    labelText: "Bairro",
                    requiredErrorMsg: "Preencha o Bairro",
                  ),
                  TextFormRequired(
                    textEditingController: accountViewModel.cidade,
                    labelText: "Cidade",
                    requiredErrorMsg: "Preencha a Cidade",
                  ),
                  TextFormRadioPickerWidget(
                    textEditingController: accountViewModel.uf,
                    pickerTitle: "UF",
                    labelText: "UF",
                    options: ["MG", "SP"],
                  ),
                  TextFormRequired(
                    textEditingController: accountViewModel.numero,
                    labelText: "Numero",
                    requiredErrorMsg: "Preencha o Número",
                  ),
                  TextFormRequired(
                    textEditingController: accountViewModel.telefone,
                    labelText: "Telefone",
                    requiredErrorMsg: "Preencha o telefone",
                  ),
                  TextFormRequired(
                    textEditingController: accountViewModel.email,
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
