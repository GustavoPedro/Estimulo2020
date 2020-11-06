import 'package:Estimulo/src/shared/app_colors.dart';
import 'package:Estimulo/src/shared/widgets/page_container.dart';
import 'package:Estimulo/src/shared/widgets/text_form_required.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  final TextEditingController negocioFamiliar = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Contato"),
        centerTitle: true,
      ),
      body: PageContainer(
        child: SingleChildScrollView(
          child: Form(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Column(
                children: [
                  TextFormRequired(
                    labelText: "Cep",
                    requiredErrorMsg: "Preencha o Cep",
                  ),
                  TextFormRequired(
                    labelText: "Rua",
                    requiredErrorMsg: "Preencha a Rua",
                  ),
                  TextFormRequired(
                    labelText: "Número",
                    requiredErrorMsg: "Preencha o Número",
                  ),
                  TextFormRequired(
                    labelText: "Bairro",
                    requiredErrorMsg: "Preencha o Bairro",
                  ),
                  TextFormRequired(
                    labelText: "Complemento",
                    requiredErrorMsg: "Preencha o Complemento",
                  ),
                  TextFormRequired(
                    labelText: "Cidade",
                    requiredErrorMsg: "Preencha a Cidade",
                  ),
                  TextFormRequired(
                    labelText: "UF",
                    requiredErrorMsg: "Preencha a UF",
                  ),
                  TextFormRequired(
                    labelText: "Telefone Comercial",
                    requiredErrorMsg: "Preencha o Telefone Comercial",
                  ),
                  TextFormRequired(
                    labelText: "Email",
                    requiredErrorMsg: "Preencha o Email",
                  ),
                  TextFormRequired(
                    labelText: "Site/Rede Social",
                    requiredErrorMsg: "Preencha o Site/Rede Social",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.primary,
        child: Icon(Icons.save),
      ),
    );
  }
}
