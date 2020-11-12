import 'package:Estimulo/src/modules/training/models/module.dart';
import 'package:Estimulo/src/modules/training/pages/modules/bloc/module_bloc.dart';
import 'package:Estimulo/src/shared/app_colors.dart';
import 'package:Estimulo/src/shared/widgets/page_container.dart';
import 'package:flutter/material.dart';
import 'package:Estimulo/src/modules/training/widgets/module_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ModulesPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey;

  ModulesPage({
    Key key,
    @required GlobalKey<ScaffoldState> scaffoldKey,
  })  : _scaffoldKey = scaffoldKey,
        super(key: key);

  Widget buildSearchIcon(ModuleState state) {
    if (state is ModulesLoaded) {
      return IconButton(
        icon: Icon(Icons.search),
        onPressed: () {},
      );
    } else {
      return IconButton(
        icon: Icon(
          Icons.search,
          color: Colors.grey,
        ),
        onPressed: () {},
      );
    }
  }

  Widget buildListOfModules(ModuleState state) {
    if (state is ModulesLoaded) {
      return ListView.builder(
        shrinkWrap: true,
        itemCount: state.modules.length,
        itemBuilder: (context, index) {
          ModuleModel module = state.modules[index];
          return ModuleItem(module: module);
        },
      );
    } else {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ModuleBloc, ModuleState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.primary,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                _scaffoldKey.currentState.openDrawer();
              },
            ),
            title: Text("Modulos"),
            centerTitle: true,
            actions: [buildSearchIcon(state)],
          ),
          body: PageContainer(child: buildListOfModules(state)),
        );
      },
    );
  }
}
