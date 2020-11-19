import 'package:Estimulo/src/shared/widgets/text_form_radio_picker.dart';
import 'package:Estimulo/src/shared/widgets/text_form_with_decoration.dart';
import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
  const PageThree({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Text(
            "O seu negócio possui filiais? Se sim, quantas estavam operando antes da pandemia e quantas atualmente? *"),
        TextFormWithDecoration(
          labelText: "Sua Resposta",
        ),
        SizedBox(
          height: 20,
        ),
        Text("Em qual(is) cidade(s) estão localizadas as filiais "),
        TextFormWithDecoration(
          labelText: "Sua Resposta",
        ),
        SizedBox(
          height: 20,
        ),
        Text("A empresa faz parte de uma franquia?"),
        TextFormRadioPickerWidget(
          labelText: "Sua Resposta",
          options: ["Sim", "Não"],
        ),
        SizedBox(
          height: 20,
        ),
        Text("A franquia concedeu algum apoio durante a pandemia?"),
        TextFormRadioPickerWidget(
          labelText: "Sua Resposta",
          options: ["Sim", "Não"],
        ),
        SizedBox(
          height: 20,
        ),
        Text(
            "Durante a pandemia, você precisou encerrar contrato com quantos fornecedores? *"),
        TextFormWithDecoration(
          keyboardType: TextInputType.number,
          labelText: "Sua Resposta",
        ),
      ],
    );
  }
}
