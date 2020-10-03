import 'package:flutter/material.dart';

void main() {
  runApp(Center(
    child: Container(
      child: Image.network(
        'https://super.abril.com.br/wp-content/uploads/2018/07/55de0cc80e21632c150004bbthinkstockphotos-4631516471.jpeg',
        width: 230,
        height: 230,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.yellow,
      ),
      padding: EdgeInsets.all(40),
      margin: const EdgeInsets.all(25),
    ),
  ));
}
