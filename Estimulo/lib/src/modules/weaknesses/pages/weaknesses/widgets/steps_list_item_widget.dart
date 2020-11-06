import 'package:flutter/material.dart';

class StepsListItemWidget extends StatelessWidget {
  final String title;
  final String percentComplete;
  final Function onPressed;

  const StepsListItemWidget({
    Key key,
    @required this.title,
    @required this.percentComplete,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: percentComplete == "100"
          ? Icon(
              Icons.check,
              color: Colors.green,
            )
          : Icon(
              Icons.check_circle,
              color: Colors.white,
            ),
      title: Text(
        title,
      ),
      subtitle: Text(
        "$percentComplete% concluído",
      ),
      trailing: IconButton(
        icon: Icon(Icons.arrow_forward_ios),
        onPressed: () {
          this.onPressed();
        },
      ),
    );
  }
}
