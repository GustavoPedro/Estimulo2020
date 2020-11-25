import 'package:Estimulo/src/modules/weaknesses/pages/pandemic/bloc/pandemic_bloc.dart';
import 'package:Estimulo/src/modules/weaknesses/pages/pandemic/widgets/back_button_widget.dart';
import 'package:Estimulo/src/modules/weaknesses/pages/pandemic/widgets/next_button_widget.dart';
import 'package:Estimulo/src/shared/app_colors.dart';
import 'package:Estimulo/src/shared/widgets/page_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PandemicInfoPage extends StatelessWidget {
  final TextEditingController recebeuAlgumEmprestimo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text("Informações Pandemia"),
      ),
      body: BlocBuilder<PandemicBloc, PandemicState>(
        builder: (context, state) {
          return PageContainer(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Stack(
                children: <Widget>[
                  SingleChildScrollView(child: state.pages[state.currentPage]),
                  BackButtonWidget(
                    state: state,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Text(
                          "Pagina ${state.currentPage + 1} de ${state.pages.length}"),
                    ),
                  ),
                  NextButtonWidget(
                    state: state,
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
