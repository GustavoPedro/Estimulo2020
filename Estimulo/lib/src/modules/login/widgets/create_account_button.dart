import 'package:Estimulo/src/shared/app_colors.dart';
import 'package:flutter/material.dart';

class CreateAccountButton extends StatelessWidget {
  final Function onPressed;

  const CreateAccountButton({Key key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      onPressed: () async {
        await onPressed();
      },
      padding: EdgeInsets.all(15),
      color: AppColors.terciary,
      child: Text("Criar Conta", style: TextStyle(color: Colors.white)),
    );
  }
}
