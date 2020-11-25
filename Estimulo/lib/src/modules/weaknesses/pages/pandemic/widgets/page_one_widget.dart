import 'package:Estimulo/src/shared/widgets/text_form_radio_picker.dart';
import 'package:Estimulo/src/shared/widgets/text_form_with_decoration.dart';
import 'package:flutter/material.dart';

class PageOneWidget extends StatelessWidget {
  final TextEditingController recebeuAlgumEmprestimo;

  const PageOneWidget({Key key, this.recebeuAlgumEmprestimo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            "A empresa recebeu algum empréstimo dos fundos públicos destinados ao socorro de pequenas e médias empresas afetadas pela Covid-19? (Exemplo: Programa Nacional de Apoio às Microempresas e Empresas de Pequeno Porte (Pronampe), Programa Emergencial de Suporte ao Emprego (Pese), Programa de Capital de Giro para Preservação de Empresa (CGPE), dentre outras). *"),
        TextFormRadioPickerWidget(
          textEditingController: recebeuAlgumEmprestimo,
          labelText: "Sua Resposta",
          options: ["Sim", "Não"],
        ),
        SizedBox(
          height: 20,
        ),
        Text(
            "informe qual(is) linha(s) de empréstimo(s) a empresa acessou e qual(is) o(s) valor(es) total(is) do(s) empréstimo(s) recebido(s)? "),
        TextFormWithDecoration(
          labelText: "Sua Resposta",
        ),
      ],
    );
  }
}
