import 'package:Estimulo/src/shared/app_colors.dart';
import 'package:Estimulo/src/shared/widgets/h2.dart';
import 'package:Estimulo/src/shared/widgets/text_form_checkbox_picker_widget.dart';
import 'package:Estimulo/src/shared/widgets/text_form_radio_picker.dart';
import 'package:Estimulo/src/shared/widgets/text_form_required.dart';
import 'package:flutter/material.dart';

class DadosNegocioWidget extends StatelessWidget {
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
              text: "Informações do Negócio",
            ),
          ),
          TextFormRequired(
            requiredErrorMsg: "Preencha o Nº de funcionários antes da crise",
            hintText: "Sua resposta",
            labelText: "Nº de funcionários antes da crise",
          ),
          Divider(
            color: AppColors.white,
          ),
          TextFormRadioPickerWidget(
            pickerTitle: "Faixa de faturamento mensal antes da crise",
            options: <String>[
              "R\$30mil à R\$90mil",
              "R\$90mil à R\$150mil",
              "R\$150mil à R\$210mil",
              "R\$210mil à R\$270mil",
              "Acima de R\$270mil"
            ],
            textEditingController: faturamentoAntesCrise,
            hintText: "Sua resposta",
            labelText: "Faixa de faturamento mensal antes da crise",
          ),
          Divider(
            color: AppColors.white,
          ),
          TextFormRadioPickerWidget(
            pickerTitle: "Setor de atuação na empresa",
            options: <String>["Varejo", "Atacado", "Indústria", "Serviço"],
            textEditingController: setorAtuacao,
            hintText: "Sua resposta",
            labelText: "Qual o setor de atuação na empresa",
          ),
          Divider(
            color: AppColors.white,
          ),
          TextFormRadioPickerWidget(
            pickerTitle: "Segmentação de nicho de mercado da empresa?",
            options: <String>[
              "Alimentação",
              "Beleza",
              "Brinquedos",
              "Educação",
              "Esportes",
              "Livraria",
              "Mercados e/ou Merceria",
              "Moda",
              "Papelaria",
              "Produtos para animais",
              "Produtos para artesanato",
              "Saúde",
              "Terceira Idade",
              "Outro"
            ],
            textEditingController: setorAtuacao,
            hintText: "Sua resposta",
            labelText: "Qual o Nicho de mercado da empresa?",
          ),
          Divider(
            color: AppColors.white,
          ),
          TextFormCheckBoxPickerWidget(
            pickerTitle: "Especialidade(s)",
            options: <String>[
              "Contabilidade",
              "E-commerce",
              "Financeiro",
              "Logística/Distribuição",
              "Marketing/Publicidade e Propaganda",
              "Marketing digital",
              "Produção",
              "Qualidade",
              "Recursos Humanos",
              "Jurídica",
              "Desenvolvimento de Produto/Design",
              "Tecnologia da Informação (TI)",
              "Gastronomia",
              "Moda",
              "Outros"
            ],
            textEditingController: setorAtuacao,
            hintText: "Sua resposta",
            labelText: "Especialidade(s) com necessidade de assessoria",
          ),
          Divider(
            color: AppColors.white,
          ),
          TextFormRadioPickerWidget(
            pickerTitle: "Segmentação de nicho de mercado da empresa?",
            options: <String>[
              "Alimentação",
              "Beleza",
              "Brinquedos",
              "Educação",
              "Esportes",
              "Livraria",
              "Mercados e/ou Merceria",
              "Moda",
              "Papelaria",
              "Produtos para animais",
              "Produtos para artesanato",
              "Saúde",
              "Terceira Idade",
              "Outro"
            ],
            textEditingController: setorAtuacao,
            hintText: "Sua resposta",
            labelText: "Qual o Nicho de mercado da empresa?",
          ),
          Divider(
            color: AppColors.white,
          ),
          Text(
              "A sua empresa se beneficiou do programa emergencial de manutenção do emprego (Medida Provisória 936) ?"),
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
        ],
      ),
    );
  }
}
