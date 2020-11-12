part of 'module_bloc.dart';

abstract class ModuleState extends Equatable {
  const ModuleState();

  @override
  List<Object> get props => [];
}

class ModuleInitial extends ModuleState {}

class ModulesLoading extends ModuleState {}

class ModulesLoaded extends ModuleState {
  final List<ModuleModel> modules;

  ModulesLoaded({@required this.modules});

  @override
  List<Object> get props => [modules];
}
