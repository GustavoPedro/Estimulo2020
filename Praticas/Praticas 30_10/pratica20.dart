import 'package:flutter/material.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() => runApp(Aplicativo());

class Aplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int indice = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> telas = <Widget>[
    Image(
      image: NetworkImage(
          'https://images.unsplash.com/photo-1547721064-da6cfb341d50'),
    ),
    Image(
      image: NetworkImage(
          'https://flutter.io/images/catalog-widget-placeholder.png'),
    ),
    Image(
      image: NetworkImage(
          'https://thumbs.jusbr.com/imgs.jusbr.com/publications/artigos/images/capturar1452194585.JPG'),
    ),
  ];
  void selecionar(int indice) {
    setState(
      () {
        this.indice = indice;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Inicial'),
      ),
      body: Center(
        child: telas.elementAt(this.indice),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Cursos'), //substituir por -> label: 'Cursos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title:
                Text('Consultoria'), //substituir por -> label: 'Consultoria',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.warning_rounded),
            title: Text('Avaliação'), //substituir por -> label: 'Avaliação',
          ),
        ],
        currentIndex: this.indice,
        selectedItemColor: Colors.amber[800],
        onTap: selecionar,
      ),
    );
  }
}
