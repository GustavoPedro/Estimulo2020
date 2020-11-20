import 'package:Estimulo/src/modules/training/models/module_content.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ContentListItemWidget extends StatefulWidget {
  final ModuleContentModel moduleContent;

  ContentListItemWidget({
    Key key,
    @required this.moduleContent,
  }) : super(key: key);

  @override
  _ContentListItemWidgetState createState() => _ContentListItemWidgetState();
}

class _ContentListItemWidgetState extends State<ContentListItemWidget> {
  YoutubePlayerController _controller;

  @override
  initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.moduleContent.link),
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

  Widget buildAccessButton() {
    String text = "Acessar Video";
    if (widget.moduleContent.tipo == "Video") {
      text = "Acessar Video";
    } else if (widget.moduleContent.tipo == "Quiz") {
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

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            widget.moduleContent.nome,
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(8),
            width: double.infinity,
            height: 200,
            child: YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.amber,
              progressColors: ProgressBarColors(
                playedColor: Colors.amber,
                handleColor: Colors.amberAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
