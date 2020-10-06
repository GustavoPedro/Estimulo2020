import 'package:Estimulo/src/modules/training/models/module_content.dart';
import 'package:flutter/material.dart';

class ContentListItemWidget extends StatelessWidget {
  final ModuleContent moduleContent;

  const ContentListItemWidget({
    Key key,
    @required this.moduleContent,
  }) : super(key: key);

  Widget buildAccessButton() {
    String text = "Acessar Video";
    if (moduleContent.type == "Video") {
      text = "Acessar Video";
    } else if (moduleContent.type == "Quiz") {
      text = "Responder Quiz";
    }

    return ButtonBar(
      alignment: MainAxisAlignment.end,
      children: [
        FlatButton(
          textColor: Color(0xFF6200EE),
          onPressed: () {},
          child: Text(text),
        ),
      ],
    );
  }

  Widget buildPositionedIcon() {
    IconData icon = Icons.play_arrow;
    if (moduleContent.type == "Video") {
      icon = Icons.play_arrow;
    } else if (moduleContent.type == "Quiz") {
      icon = Icons.help;
    }
    return Positioned.fill(
      child: Align(
        alignment: Alignment.center,
        child: Icon(
          icon,
          size: 100,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Stack(
            children: [
              Opacity(
                opacity: 0.4,
                child: Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.pink,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Image.network(
                      "https://assets.blu365.com.br/uploads/sites/4/2019/09/planejamento-financeiro-semanal.jpg",
                    ),
                  ),
                ),
              ),
              buildPositionedIcon(),
            ],
          ),
          buildAccessButton(),
        ],
      ),
    );
  }
}
