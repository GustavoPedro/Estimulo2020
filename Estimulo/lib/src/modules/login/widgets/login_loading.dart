import 'package:Estimulo/src/shared/app_colors.dart';
import 'package:flutter/material.dart';

class LoginLoadingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      onPressed: () {},
      padding: EdgeInsets.all(15),
      color: AppColors.primary,
      child: Text("Entrando...", style: TextStyle(color: Colors.white)),
    );
  }
}
