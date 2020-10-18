import 'package:Estimulo/src/modules/weaknesses/widgets/steps_list_item_widget.dart';
import 'package:Estimulo/src/shared/app_colors.dart';
import 'package:Estimulo/src/shared/widgets/page_container.dart';
import 'package:flutter/material.dart';

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
      backgroundColor: Colors.transparent,
      appBar: AppBar(
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
                ),
                StepsListItemWidget(
                  title: "Contato",
                  percentComplete: "25",
                ),
                StepsListItemWidget(
                  title: "Informações do Negócio",
                  percentComplete: "100",
                ),
                StepsListItemWidget(
                  title: "Informações da Pandêmia",
                  percentComplete: "25",
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
