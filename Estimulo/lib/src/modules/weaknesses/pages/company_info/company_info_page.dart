import 'package:Estimulo/src/shared/app_colors.dart';
import 'package:Estimulo/src/shared/widgets/page_container.dart';
import 'package:Estimulo/src/shared/widgets/text_form_radio_picker.dart';
import 'package:Estimulo/src/shared/widgets/text_form_required.dart';
import 'package:flutter/material.dart';

class CompanyInfoPage extends StatelessWidget {
  final TextEditingController negocioFamiliar = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Informações da Empresa"),
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
                    labelText: "Razão Social",
                    requiredErrorMsg: "Preencha a Razão Social",
                  ),
                  TextFormRequired(
                    labelText: "Cnpj",
                    requiredErrorMsg: "Preencha o Cnpj",
                  ),
                  TextFormRequired(
                    keyboardType: TextInputType.number,
                    labelText: "Idade da Empresa",
                    requiredErrorMsg: "Preencha a Idade da Empresa",
                  ),
                  TextFormRadioPickerWidget(
                    options: ["Sim", "Não"],
                    labelText: "Negócio Familiar",
                    textEditingController: negocioFamiliar,
                    pickerTitle: "Sua Resposta",
                  )
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
