import 'package:Estimulo/src/modules/cadastro/controller/cadastro_controller.dart';
import 'package:Estimulo/src/modules/cadastro/widgets/compinfo/dados_cadastrais_widget.dart';
import 'package:Estimulo/src/modules/cadastro/widgets/compinfo/dados_contato_widget.dart';
import 'package:Estimulo/src/modules/cadastro/widgets/compinfo/dados_emprestimo_widget.dart';
import 'package:Estimulo/src/modules/cadastro/widgets/compinfo/dados_negocio_widget.dart';
import 'package:Estimulo/src/modules/cadastro/widgets/compinfo/dados_pandemia_widget.dart';
import 'package:Estimulo/src/modules/cadastro/widgets/compinfo/form_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class CompInfoPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController faturamentoAntesCrise = TextEditingController();
  final TextEditingController setorAtuacao = TextEditingController();
  final CadastroController _cadastroController =
      GetIt.I.get<CadastroController>();

  _buildFormPage(Widget widget) {
    return FormPageWidget(
      onPressNext: () => _cadastroController.nextPage(),
      onPressPrevious: () => _cadastroController.previousPage(),
      pageNumber: _cadastroController.companyDataPage,
      totalPages: _cadastroController.totalPages,
      widget: widget,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Informações da empresa"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Form(
                key: _formKey,
                child: Observer(builder: (_) {
                  if (_cadastroController.companyDataPage == 0) {
                    return _buildFormPage(DadosCadastraisWidget());
                  } else if (_cadastroController.companyDataPage == 1) {
                    return _buildFormPage(DadosContatoWidget());
                  } else if (_cadastroController.companyDataPage == 2) {
                    return _buildFormPage(DadosNegocioWidget());
                  } else if (_cadastroController.companyDataPage == 3) {
                    return _buildFormPage(DadosEmprestimoWidget());
                  } else if (_cadastroController.companyDataPage == 4) {
                    return _buildFormPage(DadosPandemiaWidget());
                  } else {
                    return CircularProgressIndicator();
                  }
                })),
          ),
        ),
      ),
    );
  }
}
