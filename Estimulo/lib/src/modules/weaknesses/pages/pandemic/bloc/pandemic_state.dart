part of 'pandemic_bloc.dart';

class PandemicState extends Equatable {
  final int currentPage;
  final List<Widget> pages;
  const PandemicState(this.currentPage)
      : this.pages = const [
          PageOneWidget(),
          PageTwoWidget(),
          PageThreeWidget()
        ];

  @override
  List<Object> get props => [currentPage, pages];
}
