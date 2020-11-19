import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'pandemic_event.dart';
part 'pandemic_state.dart';

class PandemicBloc extends Bloc<PandemicEvent, PandemicState> {
  PandemicBloc() : super(PandemicState(1));

  @override
  Stream<PandemicState> mapEventToState(
    PandemicEvent event,
  ) async* {}
}
