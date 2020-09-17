import 'package:Estimulo/src/shared/app_colors.dart';
import 'package:Estimulo/src/shared/widgets/h2.dart';
import 'package:Estimulo/src/shared/widgets/text_form_radio_picker.dart';
import 'package:Estimulo/src/shared/widgets/text_form_with_decoration.dart';
import 'package:flutter/material.dart';

class DadosEmprestimoWidget extends StatelessWidget {
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
              text: "Informações do Emprestimo",
            ),
          ),
          Text(
              "A empresa recebeu algum empréstimo dos fundos públicos destinados ao socorro de pequenas e médias empresas afetadas pela Covid-19? (Exemplo: Programa Nacional de Apoio às Microempresas e Empresas de Pequeno Porte (Pronampe), Programa Emergencial de Suporte ao Emprego (Pese), Programa de Capital de Giro para Preservação de Empresa (CGPE), dentre outras). *"),
          Divider(
            color: AppColors.white,
          ),
          TextFormRadioPickerWidget(
            pickerTitle: "Segmentação de nicho de mercado da empresa?",
            options: <String>["Sim", "Não", "Não tenho conhecimento"],
            textEditingController: setorAtuacao,
            hintText: "Sua resposta",
          ),
          Divider(
            color: AppColors.white,
          ),
          Text(
              "Qual(is) linha(s) de empréstimo(s) a empresa acessou e qual(is) o(s) valor(es) total(is) do(s) empréstimo(s) recebido(s) ?"),
          Divider(
            color: AppColors.white,
          ),
          TextFormWithDecoration(
            hintText: "Sua resposta",
          ),
          Divider(
            color: AppColors.white,
          )
        ],
      ),
    );
  }
}
