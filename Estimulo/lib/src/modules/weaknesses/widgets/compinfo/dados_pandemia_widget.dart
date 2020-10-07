import 'package:Estimulo/src/shared/app_colors.dart';
import 'package:Estimulo/src/shared/widgets/h2.dart';
import 'package:Estimulo/src/shared/widgets/text_form_radio_picker.dart';
import 'package:Estimulo/src/shared/widgets/text_form_with_decoration.dart';
import 'package:flutter/material.dart';

class DadosPandemiaWidget extends StatelessWidget {
  final setorAtuacao = TextEditingController();
  final faturamentoAntesCrise = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: TitleTwoWidget(
              text: "Informações durante a pandemia",
            ),
          ),
          Divider(
            color: AppColors.white,
          ),
          TextFormRadioPickerWidget(
            pickerTitle: "Quantos funcionários você demitiu? *",
            options: <String>[
              "1 a 3",
              "4 a 6",
              "7 a 9",
              "Mais de 9",
              "Nenhuma demissão foi realizada"
            ],
            textEditingController: setorAtuacao,
            hintText: "Sua resposta",
            labelText: "Quantos funcionários você demitiu?",
          ),
          Divider(
            color: AppColors.white,
          ),
          TextFormRadioPickerWidget(
            pickerTitle: "Percentual de redução de Faturamento mensal: *",
            options: <String>[
              "O faturamento não teve redução.",
              "1% a 20%",
              "21% a 40%",
              "41% a 60%",
              "Mais de 60%",
              "Não tenho essa informação."
            ],
            textEditingController: setorAtuacao,
            hintText: "Sua resposta",
            labelText: "Percentual de redução de Faturamento mensal: *",
          ),
          Divider(
            color: AppColors.white,
          ),
          Text(
              "O seu negócio possui filiais? Se sim, quantas estavam operando antes da pandemia e quantas atualmente? *"),
          Divider(
            color: AppColors.white,
          ),
          TextFormRadioPickerWidget(
            pickerTitle: "Filiais",
            options: <String>[
              "Não",
              "1",
              "2",
              "Mais de 2",
            ],
            textEditingController: setorAtuacao,
            hintText: "Sua resposta",
            labelText: "Filiais",
          ),
          Divider(
            color: AppColors.white,
          ),
          Text(
              "Se respondeu que o negócio possui filiais, informe em qual(is) cidade(s) estão localizadas."),
          Divider(
            color: AppColors.white,
          ),
          TextFormWithDecoration(
            hintText: "Sua resposta",
          ),
          Divider(
            color: AppColors.white,
          ),
          Text("Sua empresa faz parte de alguma franquia ? *"),
          Divider(
            color: AppColors.white,
          ),
          TextFormRadioPickerWidget(
            pickerTitle: "Sua empresa faz parte de alguma franquia ?",
            options: <String>["Sim", "Não"],
            textEditingController: setorAtuacao,
            hintText: "Sua resposta",
            labelText: "Filiais",
          ),
          Divider(
            color: AppColors.white,
          ),
          Divider(
            color: AppColors.white,
          ),
          Text(
              "Se respondeu sim a pergunta anterior, a franquia concedeu algum apoio durante a pandemia ?*"),
          Divider(
            color: AppColors.white,
          ),
          TextFormRadioPickerWidget(
            pickerTitle: "A franquia concedeu algum apoio durante a pandemia?",
            options: <String>["Sim", "Não"],
            textEditingController: setorAtuacao,
            hintText: "Sua resposta",
            labelText: "A franquia concedeu algum apoio durante a pandemia?",
          ),
          Divider(
            color: AppColors.white,
          ),
          Divider(
            color: AppColors.white,
          ),
          Text(
              "Durante a pandemia, você precisou encerrar contrato com quantos fornecedores ?*"),
          Divider(
            color: AppColors.white,
          ),
          TextFormRadioPickerWidget(
            pickerTitle:
                "Durante a pandemia, você precisou encerrar contrato com quantos fornecedores? *",
            options: <String>["Nenhum", "1 a 2", "3 a 4", "Mais de 4"],
            textEditingController: setorAtuacao,
            hintText: "Sua resposta",
            labelText:
                "Durante a pandemia, você precisou encerrar contrato com quantos fornecedores? *",
          ),
          Divider(
            color: AppColors.white,
          )
        ],
      ),
    );
  }
}
