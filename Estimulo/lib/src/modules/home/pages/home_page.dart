import 'package:Estimulo/src/modules/about/pages/about_page.dart';
import 'package:Estimulo/src/modules/businesmonitoring/pages/list_reports_page.dart';
import 'package:Estimulo/src/modules/login/pages/authentication/bloc/authentication_bloc.dart';
import 'package:Estimulo/src/modules/login/pages/profile/profile_page.dart';
import 'package:Estimulo/src/modules/specificment/pages/alert_fill_weaknesses_page.dart';
import 'package:Estimulo/src/modules/training/models/module.dart';
import 'package:Estimulo/src/modules/training/pages/modules/bloc/module_bloc.dart';
import 'package:Estimulo/src/modules/training/pages/modules_page.dart';
import 'package:Estimulo/src/modules/weaknesses/pages/weaknesses/weaknesses_page.dart';
import 'package:Estimulo/src/shared/repositories/online_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int _selectedIndex = 0;

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  Future<bool> isFirstTime() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var isFirstTime = prefs.getBool('first_time');
    if (isFirstTime != null && !isFirstTime) {
      prefs.setBool('first_time', false);
      return false;
    } else {
      prefs.setBool('first_time', false);
      return true;
    }
  }

  @override
  void initState() {
    super.initState();

    isFirstTime().then((value) {
      if (value) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                AlertFillWeaknessesPage(scaffoldkey: _scaffoldKey),
          ),
        );
      }
    });
  }

  _getDrawerItem(int pos) {
    switch (pos) {
      case 0:
        return BlocProvider(
          create: (context) => ModuleBloc(
              onlineRepository: GetIt.I.get<OnlineRepository<ModuleModel>>()),
          child: ModulesPage(scaffoldKey: _scaffoldKey),
        );
      case 1:
        return WeaknessesPage(scaffoldKey: _scaffoldKey);
      case 2:
        return ListReportsPage(scaffoldKey: _scaffoldKey);
      case 3:
        return AboutPage(
          scaffoldKey: _scaffoldKey,
        );
      case 4:
        return ProfilePage(
          scaffoldKey: _scaffoldKey,
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
                    alignment: Alignment.center,
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
                  selected: 3 == _selectedIndex,
                  onTap: () {
                    _onSelectItem(3);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  //title: Text(AppLocalizations.of(context).translate('home')),
                  title: Text("Perfil"),
                  selected: 4 == _selectedIndex,
                  onTap: () {
                    _onSelectItem(4);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text("Sair"),
                  selected: 5 == _selectedIndex,
                  onTap: () {
                    BlocProvider.of<AuthenticationBloc>(context).add(
                      AuthenticationLoggedOut(),
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
