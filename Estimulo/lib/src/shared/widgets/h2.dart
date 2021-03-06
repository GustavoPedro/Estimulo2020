import 'package:flutter/material.dart';

class TitleTwoWidget extends StatelessWidget {
  final String text;

  const TitleTwoWidget({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 24,
      ),
    );
  }
}
