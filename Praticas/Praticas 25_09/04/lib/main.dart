import 'package:flutter/material.dart';

void main() {
  runApp(Row(
    textDirection: TextDirection.ltr,
    children: <Widget>[
      Expanded(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Image.network(
            'https://picsum.photos/250?image=9',
          ),
        ),
      ),
      Expanded(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Image.network(
            'https://picsum.photos/250?image=9',
          ),
        ),
      ),
      Expanded(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Image.network(
            'https://picsum.photos/250?image=9',
          ),
        ),
      ),
    ],
  ));
}
