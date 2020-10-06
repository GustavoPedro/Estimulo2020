import 'package:Estimulo/src/modules/cadastro/pages/info_page.dart';
import 'package:Estimulo/src/modules/login/controllers/login_controller.dart';
import 'package:Estimulo/src/modules/login/pages/authentication_page.dart';
import 'package:Estimulo/src/modules/specificment/pages/alert_fill_weaknesses_page.dart';
import 'package:Estimulo/src/modules/training/pages/modules_page.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int _selectedIndex = 0;

  LoginController _loginController = GetIt.I.get<LoginController>();

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  _getDrawerItem(int pos) {
    switch (pos) {
      case 0:
        return ModulesPage(scaffoldKey: _scaffoldKey);
      case 1:
        return InfoPage();
      case 2:
        return AlertFillWeaknessesPage();
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedIndex = index);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final _drawer = Drawer(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.85,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("lib/assets/images/estimulo2020.jpeg"),
                    alignment: Alignment.bottomCenter,
                  ),
                ),
                child: Text(""),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.group),
                  title: Text("Mentoria Especifica"),
                  selected: 1 == _selectedIndex,
                  onTap: () {
                    _onSelectItem(1);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.play_arrow),
                  //title: Text(AppLocalizations.of(context).translate('home')),
                  title: Text("Capacitação Geral"),
                  selected: 0 == _selectedIndex,
                  onTap: () {
                    _onSelectItem(0);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.assignment),
                  title: Text("Acompanhamento do Negócio"),
                  selected: 2 == _selectedIndex,
                  onTap: () {
                    _onSelectItem(2);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.info),
                  title: Text("Sobre Nós"),
                  selected: 1 == _selectedIndex,
                  onTap: () {
                    _onSelectItem(1);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  //title: Text(AppLocalizations.of(context).translate('home')),
                  title: Text("Perfil"),
                  selected: 0 == _selectedIndex,
                  onTap: () {
                    _onSelectItem(0);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text("Sair"),
                  selected: 2 == _selectedIndex,
                  onTap: () {
                    _loginController.logout();
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AuthenticationPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      key: _scaffoldKey,
      drawer: _drawer,
      body: _getDrawerItem(_selectedIndex),
    );
  }
}
