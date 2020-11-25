import 'package:Estimulo/src/modules/weaknesses/pages/pandemic/bloc/pandemic_bloc.dart';
import 'package:Estimulo/src/shared/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BackButtonWidget extends StatelessWidget {
  final PandemicState _state;

  const BackButtonWidget({Key key, @required PandemicState state})
      : this._state = state,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    if (_state.currentPage == 0) {
      return Container();
    } else {
      return Align(
        alignment: Alignment.bottomLeft,
        child: FloatingActionButton(
          heroTag: "btnBack",
          onPressed: () {
            BlocProvider.of<PandemicBloc>(context).add(PreviousForm());
          },
          backgroundColor: AppColors.primary,
          child: Center(child: Icon(Icons.arrow_back_ios)),
        ),
      );
    }
  }
}
