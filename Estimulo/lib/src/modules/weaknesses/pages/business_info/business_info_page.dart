import 'package:Estimulo/src/shared/app_colors.dart';
import 'package:Estimulo/src/shared/widgets/page_container.dart';
import 'package:Estimulo/src/shared/widgets/text_form_checkbox_picker_widget.dart';
import 'package:Estimulo/src/shared/widgets/text_form_radio_picker.dart';
import 'package:Estimulo/src/shared/widgets/text_form_required.dart';
import 'package:flutter/material.dart';

class BusinessInfoPage extends StatelessWidget {
  final TextEditingController negocioFamiliar = TextEditingController();
  final TextEditingController faturamentoMensalAntesCrise =
      TextEditingController();
  final TextEditingController setorAtuacao = TextEditingController();
  final TextEditingController segmentacaoNicho = TextEditingController();
  final TextEditingController especialidadesAcessoria = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Informações do Negócio"),
        centerTitle: true,
      ),
      body: PageContainer(
        child: SingleChildScrollView(
          child: Form(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text("Numero de Funcionários Antes da Crise:"),
                  TextFormRequired(
                    keyboardType: TextInputType.number,
                    labelText: "Sua Resposta",
                    requiredErrorMsg: "Campo Obrigatório",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Faturamento Mensal Antes da Crise"),
                  TextFormRadioPickerWidget(
                    textEditingController: faturamentoMensalAntesCrise,
                    labelText: "Sua Resposta",
                    options: [
                      "30mil a 90mil",
                      "90mil a 150mil",
                      "150mil a 210mil",
                      "210mil a 270mil",
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Setor de Atuação da Empresa"),
                  TextFormRadioPickerWidget(
                    textEditingController: setorAtuacao,
                    labelText: "Sua Resposta",
                    options: ["Varejo", "Atacado", "Indústria", "Serviço"],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Segmentação de Nicho da Empresa"),
                  TextFormRadioPickerWidget(
                    textEditingController: segmentacaoNicho,
                    labelText: "Sua Resposta",
                    options: ["Alimentação", "Beleza", "Brinquedos"],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Especialidades que necessitam de acessoria"),
                  TextFormCheckBoxPickerWidget(
                    textEditingController: especialidadesAcessoria,
                    labelText: "Sua Resposta",
                    options: ["Contabilidade", "E-Commerce", "Financeiro"],
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
