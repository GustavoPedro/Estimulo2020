import 'package:Estimulo/src/modules/businesmonitoring/models/report_model.dart';
import 'package:Estimulo/src/modules/businesmonitoring/pages/report_business_page.dart';
import 'package:Estimulo/src/shared/app_colors.dart';
import 'package:Estimulo/src/shared/models/listitem_model.dart';
import 'package:Estimulo/src/shared/widgets/listitem_widget.dart';
import 'package:Estimulo/src/shared/widgets/page_container.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ListReportsPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  final List<ReportModel> reports = [
    ReportModel(
      dateReport: DateTime.now(),
      status: "Pendente",
      userName: "Gustavo",
    ),
    ReportModel(
      dateReport: DateTime.now(),
      status: "Em andamento",
      userName: "Gustavo",
    ),
    ReportModel(
      dateReport: DateTime.now(),
      status: "Respondido",
      userName: "Gustavo",
    ),
  ];

  ListReportsPage({Key key, this.scaffoldKey}) : super(key: key);
  final dateFormat = new DateFormat('dd/MM/yyyy');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primary,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              scaffoldKey.currentState.openDrawer();
            },
          ),
          centerTitle: true,
          title: Text("Acompanhamento"),
        ),
        body: SafeArea(
          child: PageContainer(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: reports.length,
              itemBuilder: (context, index) {
                return ListItemWidget(
                  listItemModel: ListItemModel(
                    modelClass: reports[index],
                    title: reports[index].status,
                    subtitle: dateFormat.format(
                      reports[index].dateReport,
                    ),
                    onPressListItem: (report) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ReportBusinessPage(
                            date: dateFormat
                                .format((report as ReportModel).dateReport),
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ));
  }
}
