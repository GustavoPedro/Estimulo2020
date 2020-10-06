import 'package:Estimulo/src/modules/training/models/module.dart';
import 'package:Estimulo/src/modules/training/models/module_content.dart';
import 'package:Estimulo/src/modules/training/pages/module_content_page.dart';
import 'package:flutter/material.dart';

class ModulesWidget extends StatelessWidget {
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
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: modules.length,
      itemBuilder: (context, index) {
        ModuleModel module = modules[index];
        return Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              ListTile(
                title: Text(module.moduleName ?? ""),
              ),
              Container(
                width: double.infinity,
                height: 200,
                color: Colors.pink,
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Image.network(
                    module.moduleImage,
                  ),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.end,
                children: [
                  FlatButton(
                    textColor: Color(0xFF6200EE),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ModuleContentPage(
                            moduleModel: module,
                          ),
                        ),
                      );
                    },
                    child: Text('Acessar'),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
