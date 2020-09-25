import 'package:flutter/material.dart';

void main() {
  String nome = "Ana";
  String semana = "quinta-feira";

  runApp(
    Center(
      child: RichText(
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
        text: TextSpan(
          text: "Olá, ",
          style: TextStyle(
            color: Colors.green,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.white,
          ),
          children: <TextSpan>[
            TextSpan(
              text: '$nome',
              style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
                decorationColor: Colors.red,
                decorationStyle: TextDecorationStyle.double,
                backgroundColor: Colors.green,
              ),
            ),
            TextSpan(
              text: '!',
            ),
            TextSpan(
              text: '\nHoje é $semana!',
              style: TextStyle(
                color: Colors.red,
                decorationColor: Colors.red,
                backgroundColor: Colors.yellow,
              ),
            ),
            TextSpan(
              text: '\nBom dia!',
            ),
            TextSpan(
                text:
                    '\n\nHoje, você terá que escrever um aplicativo\nem flutter.O aplicativo deve imprimir um\ntexto na tela. O texto possui trechos com\ncom estilos diferentes.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  backgroundColor: Colors.black,
                )),
            TextSpan(
                text: '\n\n\n\nBoa prática!',
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 20,
                  backgroundColor: Colors.black,
                )),
            TextSpan(
                text: '\n=',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  backgroundColor: Colors.black,
                )),
            TextSpan(
                text: 'D',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  backgroundColor: Colors.black,
                )),
            TextSpan(
                text: 'H',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  backgroundColor: Colors.black,
                )),
          ],
        ),
      ),
    ),
  );
}
