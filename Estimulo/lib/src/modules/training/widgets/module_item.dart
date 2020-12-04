import 'dart:convert';

import 'package:Estimulo/src/modules/training/models/module.dart';
import 'package:Estimulo/src/modules/training/pages/modules/module_content_page.dart';
import 'package:flutter/material.dart';

class ModuleItem extends StatelessWidget {
  const ModuleItem({
    Key key,
    @required this.module,
  }) : super(key: key);

  final ModuleModel module;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.pink,
            child: FittedBox(
              fit: BoxFit.fill,
              child: Image.memory(base64Decode(module.imagem)),
            ),
          ),
          ListTile(
            title: Text(
              module?.nome,
            ),
            trailing: FlatButton(
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
          ),
        ],
      ),
    );
  }
}
