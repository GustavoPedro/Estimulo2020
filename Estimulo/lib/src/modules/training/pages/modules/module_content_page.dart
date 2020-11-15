import 'package:Estimulo/src/modules/training/models/module.dart';
import 'package:Estimulo/src/modules/training/models/module_content.dart';
import 'package:Estimulo/src/modules/training/widgets/content_list_item_widget.dart';
import 'package:Estimulo/src/shared/app_colors.dart';
import 'package:Estimulo/src/shared/widgets/page_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModuleContentPage extends StatelessWidget {
  final ModuleModel moduleModel;

  ModuleContentPage({Key key, @required this.moduleModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(moduleModel.nome),
        centerTitle: true,
      ),
      body: PageContainer(
        child: ListView.builder(
          itemCount: moduleModel.moduloDetalhes?.length ?? 0,
          itemBuilder: (context, index) {
            ModuleContentModel moduleContent =
                moduleModel.moduloDetalhes[index];
            return ContentListItemWidget(moduleContent: moduleContent);
          },
        ),
      ),
    );
  }
}
