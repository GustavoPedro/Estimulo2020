import 'package:Estimulo/src/modules/weaknesses/pages/pandemic/bloc/pandemic_bloc.dart';
import 'package:Estimulo/src/modules/weaknesses/pages/pandemic/widgets/page_three.dart';
import 'package:Estimulo/src/shared/app_colors.dart';
import 'package:Estimulo/src/shared/widgets/page_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PandemicInfo extends StatelessWidget {
  final TextEditingController recebeuAlgumEmprestimo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Informações Pandemia"),
      ),
      body: BlocBuilder<PandemicBloc, PandemicState>(
        builder: (context, state) {
          return PageContainer(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Stack(
                children: <Widget>[
                  SingleChildScrollView(child: PageThree()),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: FloatingActionButton(
                      heroTag: "btnBack",
                      onPressed: () {},
                      backgroundColor: AppColors.primary,
                      child: Center(child: Icon(Icons.arrow_back_ios)),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Text("Pagina 1 de 1"),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: FloatingActionButton(
                      heroTag: "btnNext",
                      onPressed: () {},
                      backgroundColor: AppColors.primary,
                      child: Center(child: Icon(Icons.arrow_forward_ios)),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
