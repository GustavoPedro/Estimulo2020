import 'package:Estimulo/src/shared/app_colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TermsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 220,
      child: SingleChildScrollView(
        child: RichText(
          text: TextSpan(
            text:
                """O objetivo deste formulário é realizar um mapeamento para posterior seleção de empresas contempladas no projeto ‘Consulte a Ânima’ de Assessoria/Consultoria do Centro Universitário Una e Centro Universitário Uni-BH.\n
* O preenchimento do formulário não garante a participação no projeto ‘Consulte a Ânima’.\n
* Serão selecionadas 20 empresas.\n
* O assessoramento terá a duração total de três (3) meses.\n
* Todas as informações preenchidas neste formulário serão tratadas com confidencialidade.\n
* Em caso de dúvidas, entrar em contato no endereço:""",
            style: TextStyle(fontSize: 18, color: AppColors.black),
            children: [
              TextSpan(
                style: TextStyle(color: AppColors.hyperlink),
                text: " sara.chaves@una.br",
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    launch('mailto:sara.chaves@una.br');
                  },
              ),
              TextSpan(text: """

* O preenchimento de todas as perguntas é obrigatório.

* O preenchimento do formulário deve ser realizado até o dia 28/08/2020.

* O tempo estimado para preenchimento do formulário é de 10 minutos.
""")
            ],
          ),
        ),
      ),
    );
  }
}
