part of 'pandemic_bloc.dart';

class PandemicState extends Equatable {
  final int page;
  const PandemicState(this.page);

  @override
  List<Object> get props => [page];
}
