import 'package:Estimulo/src/shared/app_colors.dart';
import 'package:Estimulo/src/shared/widgets/page_container.dart';
import 'package:Estimulo/src/shared/widgets/text_form_required.dart';
import 'package:flutter/material.dart';

class ReportBusinessPage extends StatefulWidget {
  final String date;

  const ReportBusinessPage({Key key, this.date}) : super(key: key);

  @override
  _ReportBusinessPageState createState() => _ReportBusinessPageState();
}

class _ReportBusinessPageState extends State<ReportBusinessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(widget.date),
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
                  SizedBox(height: 10),
                  Text(
                    "Quanto seu caixa subiu durante/apos o projeto Estimulo2020 ?",
                  ),
                  TextFormRequired(
                    labelText: "Sua resposta",
                  ),
                  SizedBox(height: 20),
                  Text(
                    "O fluxo de vendas aumentou ?",
                  ),
                  TextFormRequired(
                    labelText: "Sua resposta",
                  ),
                  SizedBox(height: 20),
                  Text(
                    "O numero de clientes aumentou ?",
                  ),
                  TextFormRequired(
                    labelText: "Sua resposta",
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Seus gastos aumentaram ?",
                  ),
                  TextFormRequired(
                    labelText: "Sua resposta",
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Você fechou os ultimos mêses positivo ou negativo ?",
                  ),
                  TextFormRequired(
                    labelText: "Sua resposta",
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Obeservações sobre o negocio ?",
                  ),
                  TextFormRequired(
                    maxLines: 8,
                    labelText: "Sua resposta",
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
