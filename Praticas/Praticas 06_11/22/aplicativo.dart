import 'package:flutter/material.dart';

import 'menu_suspenso.dart';

class Aplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Exemplo de DropdownMenu')),
        body: Center(
          child: MenuSuspenso(),
        ),
      ),
    );
  }
}
