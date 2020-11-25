import 'dart:async';

import 'package:Estimulo/src/modules/weaknesses/pages/pandemic/widgets/page_one_widget.dart';
import 'package:Estimulo/src/modules/weaknesses/pages/pandemic/widgets/page_three_widget.dart';
import 'package:Estimulo/src/modules/weaknesses/pages/pandemic/widgets/page_two_widget.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'pandemic_event.dart';
part 'pandemic_state.dart';

class PandemicBloc extends Bloc<PandemicEvent, PandemicState> {
  PandemicBloc() : super(PandemicState(0));

  @override
  Stream<PandemicState> mapEventToState(
    PandemicEvent event,
  ) async* {
    if (event is NextForm) {
      if (state.currentPage < state.pages.length - 1) {
        yield PandemicState(state.currentPage + 1);
      }
    }
    if (event is PreviousForm) {
      if (state.currentPage > 0) {
        yield PandemicState(state.currentPage - 1);
      }
    }
  }
}
