import 'package:Estimulo/src/shared/models/listitem_model.dart';
import 'package:flutter/material.dart';

class ListItemWidget extends StatelessWidget {
  final ListItemModel listItemModel;
  ListItemWidget({Key key, this.listItemModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              title: Text(listItemModel.title ?? ""),
              subtitle: Text(listItemModel.subtitle ?? ""),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('Acessar'),
                  onPressed: () {
                    listItemModel.onPressListItem(listItemModel.modelClass);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
