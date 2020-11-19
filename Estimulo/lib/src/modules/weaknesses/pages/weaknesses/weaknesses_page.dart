import 'package:Estimulo/src/modules/weaknesses/pages/business_info/business_info_page.dart';
import 'package:Estimulo/src/modules/weaknesses/pages/company_info/company_info_page.dart';
import 'package:Estimulo/src/modules/weaknesses/pages/contact/contact_page.dart';
import 'package:Estimulo/src/modules/weaknesses/pages/pandemic/bloc/pandemic_bloc.dart';
import 'package:Estimulo/src/modules/weaknesses/pages/pandemic/pandemic_info.dart';
import 'package:Estimulo/src/modules/weaknesses/pages/weaknesses/widgets/steps_list_item_widget.dart';
import 'package:Estimulo/src/shared/app_colors.dart';
import 'package:Estimulo/src/shared/widgets/page_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeaknessesPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey;

  const WeaknessesPage({
    Key key,
    @required GlobalKey<ScaffoldState> scaffoldKey,
  })  : _scaffoldKey = scaffoldKey,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
        title: Text(
          "Fragilidades",
        ),
        centerTitle: true,
      ),
      body: PageContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView(
              shrinkWrap: true,
              children: [
                StepsListItemWidget(
                  title: "Informações da Empresa",
                  percentComplete: "0",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CompanyInfoPage(),
                      ),
                    );
                  },
                ),
                StepsListItemWidget(
                  title: "Contato",
                  percentComplete: "25",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContactPage(),
                      ),
                    );
                  },
                ),
                StepsListItemWidget(
                  title: "Informações do Negócio",
                  percentComplete: "100",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BusinessInfoPage(),
                      ),
                    );
                  },
                ),
                StepsListItemWidget(
                  title: "Informações da Pandêmia",
                  percentComplete: "25",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BlocProvider(
                          create: (context) => PandemicBloc(),
                          child: PandemicInfo(),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              "Progresso: 50%",
              textAlign: TextAlign.start,
            ),
            Divider(),
            LinearProgressIndicator(
              value: 0.5,
              valueColor: AlwaysStoppedAnimation<Color>(AppColors.terciary),
            ),
          ],
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
