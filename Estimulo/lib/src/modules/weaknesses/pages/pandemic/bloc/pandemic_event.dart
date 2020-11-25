part of 'pandemic_bloc.dart';

abstract class PandemicEvent extends Equatable {
  const PandemicEvent();

  @override
  List<Object> get props => [];
}

class NextForm extends PandemicEvent {}

class PreviousForm extends PandemicEvent {}

class SaveForm extends PandemicEvent {}
