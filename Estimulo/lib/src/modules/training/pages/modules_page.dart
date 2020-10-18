import 'package:Estimulo/src/modules/training/models/module.dart';
import 'package:Estimulo/src/modules/training/models/module_content.dart';
import 'package:Estimulo/src/shared/app_colors.dart';
import 'package:Estimulo/src/shared/widgets/page_container.dart';
import 'package:flutter/material.dart';
import 'package:Estimulo/src/modules/training/widgets/module_item.dart';

class ModulesPage extends StatelessWidget {
  final List<ModuleModel> modules = <ModuleModel>[
    ModuleModel(
      moduleId: 1,
      moduleName: "Financeiro",
      moduleImage:
          "https://assets.blu365.com.br/uploads/sites/4/2019/09/planejamento-financeiro-semanal.jpg",
      moduleContents: <ModuleContent>[
        ModuleContent(
          moduleId: 1,
          title: "Teste",
          link: "https://www.youtube.com/watch?v=mNHKNyhSn8I",
          type: "Video",
        ),
        ModuleContent(
          moduleId: 1,
          title: "Teste",
          link: "https://www.youtube.com/watch?v=mNHKNyhSn8I",
          type: "Quiz",
        ),
        ModuleContent(
          moduleId: 1,
          title: "Teste",
          link: "https://www.youtube.com/watch?v=mNHKNyhSn8I",
          type: "Video",
        ),
      ],
    ),
    ModuleModel(
      moduleId: 2,
      moduleName: "Teste2",
      moduleImage:
          "https://assets.blu365.com.br/uploads/sites/4/2019/09/planejamento-financeiro-semanal.jpg",
      moduleContents: <ModuleContent>[
        ModuleContent(
          moduleId: 1,
          title: "Teste",
          link: "https://www.youtube.com/watch?v=mNHKNyhSn8I",
          type: "Quiz",
        ),
        ModuleContent(
          moduleId: 1,
          title: "Teste",
          link: "https://www.youtube.com/watch?v=mNHKNyhSn8I",
          type: "Video",
        ),
        ModuleContent(
          moduleId: 1,
          title: "Teste",
          link: "https://www.youtube.com/watch?v=mNHKNyhSn8I",
          type: "Video",
        ),
      ],
    ),
    ModuleModel(
      moduleId: 3,
      moduleName: "Teste3",
      moduleImage: "https://picsum.photos/250?image=9",
      moduleContents: <ModuleContent>[
        ModuleContent(
          moduleId: 1,
          title: "Teste",
          link: "https://www.youtube.com/watch?v=mNHKNyhSn8I",
          type: "Quiz",
        ),
        ModuleContent(
          moduleId: 1,
          title: "Teste",
          link: "https://www.youtube.com/watch?v=mNHKNyhSn8I",
          type: "Video",
        ),
        ModuleContent(
          moduleId: 1,
          title: "Teste",
          link: "https://www.youtube.com/watch?v=mNHKNyhSn8I",
          type: "Video",
        ),
      ],
    ),
  ];

  final GlobalKey<ScaffoldState> _scaffoldKey;

  ModulesPage({
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
        title: Text("Modulos"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: PageContainer(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: modules.length,
          itemBuilder: (context, index) {
            ModuleModel module = modules[index];
            return ModuleItem(module: module);
          },
        ),
      ),
    );
  }
}
