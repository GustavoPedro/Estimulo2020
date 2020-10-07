import 'package:Estimulo/src/shared/app_colors.dart';
import 'package:flutter/material.dart';

class FormPageWidget extends StatelessWidget {
  final int pageNumber;
  final int totalPages;
  final Widget widget;
  final Function onPressNext;
  final Function onPressPrevious;

  const FormPageWidget({
    Key key,
    this.pageNumber,
    this.widget,
    this.onPressNext,
    this.onPressPrevious,
    this.totalPages,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("Pagina $pageNumber de $totalPages"),
            Container(
              margin: EdgeInsets.only(left: 10.0, right: 10.0),
              child: FlatButton(
                onPressed: () {
                  onPressPrevious();
                },
                child: Text(
                  "Anterior",
                  style: TextStyle(color: AppColors.white),
                ),
                color: AppColors.primary,
              ),
            ),
            FlatButton(
              onPressed: () {
                onPressNext();
              },
              child: Text(
                "Próximo",
                style: TextStyle(color: AppColors.white),
              ),
              color: AppColors.primary,
            ),
          ],
        ),
      ],
    );
  }
}
