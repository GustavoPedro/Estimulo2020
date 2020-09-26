import 'package:Estimulo/src/modules/cadastro/pages/info_page.dart';
import 'package:Estimulo/src/modules/login/controllers/login_controller.dart';
import 'package:Estimulo/src/modules/login/models/session_model.dart';
import 'package:Estimulo/src/modules/login/pages/authentication_page.dart';
import 'package:Estimulo/src/shared/app_colors.dart';
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
  SessionModel _sessionModel = GetIt.I.get<SessionModel>();

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  _getDrawerItem(int pos) {
    switch (pos) {
      case 0:
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  _scaffoldKey.currentState.openDrawer();
                }),
            title: Text("Bem Vindo"),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.exit_to_app),
                  onPressed: () {
                    _loginController.logout();
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AuthenticationPage(),
                      ),
                    );
                  }),
            ],
          ),
          body: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Text(
                  "Bem vindo ${_sessionModel.userName}",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        );
      case 1:
        return InfoPage();
      case 2:
        return Container(
          child: Center(
            child: Text("Olá World"),
          ),
        );
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedIndex = index);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final _drawer = Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Image.asset(
                    'lib/assets/images/logo.jpg',
                    height: 90,
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: AppColors.primary,
            ),
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
            leading: Icon(Icons.build),
            title: Text("Bla Bla Bla"),
            selected: 1 == _selectedIndex,
            onTap: () {
              _onSelectItem(1);
            },
          ),
          ListTile(
            leading: Icon(Icons.autorenew),
            title: Text("Bla Bla Bla"),
            selected: 2 == _selectedIndex,
            onTap: () {
              _onSelectItem(2);
            },
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
