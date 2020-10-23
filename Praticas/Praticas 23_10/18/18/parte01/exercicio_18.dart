import 'package:flutter/material.dart';
import 'package:pratica_23_10/18/parte01/rota_generica.dart';

class Exercicio18 extends StatefulWidget {
  @override
  _Exercicio18State createState() => _Exercicio18State();
}

class _Exercicio18State extends State<Exercicio18> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Primeira Rota'),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                accountName: Text("Ana"),
                accountEmail: Text("ana@ana.com.br"),
                currentAccountPicture: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                    'https://img.freepik.com/fotos-gratis/gotas-de-oleo-na-imagem-abstrata-padrao-psicodelico-de-agua_23-2148290141.jpg?size=626&ext=jpg',
                  ),
                  backgroundColor: Colors.transparent,
                ),
              ),
              ListTile(
                leading: Icon(Icons.video_collection),
                title: Text("Rota 02"),
                subtitle: Text("Siga para a Rota 02."),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RotaGenerica(
                        rota: "Segunda Rota",
                      ),
                    ),
                  );
                  print('Ir para a Rota 02.');
                },
              ),
              ListTile(
                leading: Icon(Icons.analytics),
                title: Text("Rota 03"),
                subtitle: Text("Siga para a Rota 03"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RotaGenerica(
                        rota: "Terceira Rota",
                      ),
                    ),
                  );
                  print('Ir para a Rota 03.');
                },
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Rota 01"),
                subtitle: Text("Voltar para a Rota 01"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  print('Voltar para a Rota 01.');
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: Text("Corpo"),
        ));
  }
}
