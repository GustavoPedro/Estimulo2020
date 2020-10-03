import 'package:flutter/material.dart';

void main() {
  runApp(Center(
      child: SizedBox(
          width: 250,
          height: 250,
          child: Stack(
            textDirection: TextDirection.ltr,
            children: <Widget>[
              Container(
                width: 250,
                height: 250,
                color: Colors.white,
              ),
              Container(
                padding: EdgeInsets.all(5.0),
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Colors.purple,
                      Colors.purple[200],
                      Colors.blue[200],
                      Colors.blue
                    ],
                  ),
                ),
                child: Image.network(
                  'https://github.com/flutter/plugins/raw/master/packages/video_player/video_player/doc/demo_ipod.gif?raw=true',
                ),
              )
            ],
          ))));
}
