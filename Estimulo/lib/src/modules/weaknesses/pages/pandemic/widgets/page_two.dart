import 'package:Estimulo/src/shared/widgets/text_form_radio_picker.dart';
import 'package:Estimulo/src/shared/widgets/text_form_with_decoration.dart';
import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Text(
            "A sua empresa se beneficiou do programa emergencial de manutenção do emprego (Medida Provisória 936)? *"),
        TextFormRadioPickerWidget(
          labelText: "Sua Resposta",
          options: ["Sim", "Não"],
        ),
        SizedBox(
          height: 20,
        ),
        Text("Durante a pandemia, quantos funcionários você demitiu? * "),
        TextFormWithDecoration(
          keyboardType: TextInputType.number,
          labelText: "Sua Resposta",
        ),
        SizedBox(
          height: 20,
        ),
        Text(
            "Durante a pandemia, qual foi o percentual de redução de seu faturamento mensal? *"),
        TextFormWithDecoration(
          keyboardType: TextInputType.number,
          labelText: "Sua Resposta",
        ),
      ],
    );
  }
}
