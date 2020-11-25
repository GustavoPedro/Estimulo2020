import 'package:Estimulo/src/modules/weaknesses/pages/pandemic/bloc/pandemic_bloc.dart';
import 'package:Estimulo/src/shared/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NextButtonWidget extends StatelessWidget {
  final PandemicState _state;

  const NextButtonWidget({Key key, @required PandemicState state})
      : this._state = state,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    if (_state.currentPage == _state.pages.length - 1) {
      return Align(
        alignment: Alignment.bottomRight,
        child: FloatingActionButton(
          heroTag: "btnBack",
          onPressed: () {
            BlocProvider.of<PandemicBloc>(context).add(NextForm());
          },
          backgroundColor: AppColors.primary,
          child: Center(child: Icon(Icons.save)),
        ),
      );
    } else {
      return Align(
        alignment: Alignment.bottomRight,
        child: FloatingActionButton(
          heroTag: "btnNext",
          onPressed: () {
            BlocProvider.of<PandemicBloc>(context).add(NextForm());
          },
          backgroundColor: AppColors.primary,
          child: Center(child: Icon(Icons.arrow_forward_ios)),
        ),
      );
    }
  }
}
