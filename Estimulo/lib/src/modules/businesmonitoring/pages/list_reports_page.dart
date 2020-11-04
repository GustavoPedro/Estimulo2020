import 'package:Estimulo/src/modules/businesmonitoring/models/report_model.dart';
import 'package:Estimulo/src/shared/models/listitem_model.dart';
import 'package:Estimulo/src/shared/widgets/listitem_widget.dart';
import 'package:Estimulo/src/shared/widgets/page_container.dart';
import 'package:flutter/material.dart';

class ListReportsPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  final List<ReportModel> reports = [
    ReportModel(
      dateReport: DateTime.now(),
      status: "Pending",
      userName: "Gustavo",
    ),
    ReportModel(
      dateReport: DateTime.now(),
      status: "Waiting",
      userName: "Gustavo",
    ),
    ReportModel(
      dateReport: DateTime.now(),
      status: "Answered",
      userName: "Gustavo",
    ),
  ];

  ListReportsPage({Key key, this.scaffoldKey}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
                      subtitle: reports[index].dateReport.toString()),
                );
              },
            ),
          ),
        ));
  }
}
