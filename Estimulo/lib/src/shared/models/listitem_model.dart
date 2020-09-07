import 'model.dart';

class ListItemModel {
  final String title;
  final String subtitle;
  final Model modelClass;
  final Function(Model) onPressListItem;

  ListItemModel(
      {this.title, this.subtitle, this.onPressListItem, this.modelClass});
}
