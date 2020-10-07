import 'package:Estimulo/src/modules/training/models/module.dart';
import 'package:Estimulo/src/modules/training/models/module_content.dart';
import 'package:Estimulo/src/modules/training/widgets/content_list_item_widget.dart';
import 'package:Estimulo/src/shared/app_colors.dart';
import 'package:Estimulo/src/shared/widgets/page_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModuleContentPage extends StatelessWidget {
  final ModuleModel moduleModel;

  const ModuleContentPage({Key key, @required this.moduleModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        title: Text(moduleModel.moduleName),
        centerTitle: true,
      ),
      body: PageContainer(
        child: ListView.builder(
          itemCount: moduleModel.moduleContents?.length ?? 0,
          itemBuilder: (context, index) {
            ModuleContent moduleContent = moduleModel.moduleContents[index];
            return ContentListItemWidget(moduleContent: moduleContent);
          },
        ),
      ),
    );
  }
}
