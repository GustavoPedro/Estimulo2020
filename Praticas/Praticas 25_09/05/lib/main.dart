import 'package:flutter/material.dart';

void main() {
  runApp(Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Expanded(
        child: FittedBox(
          child: FlutterLogo(),
          fit: BoxFit.contain,
        ),
      ),
      Expanded(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Image.asset("lib/assets/images/notebook.jpg"),
        ),
      ),
      Expanded(
        child: Text(
          "Google Flutter",
          textDirection: TextDirection.ltr,
          style: TextStyle(
            backgroundColor: Colors.white,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      )
    ],
  ));
}
