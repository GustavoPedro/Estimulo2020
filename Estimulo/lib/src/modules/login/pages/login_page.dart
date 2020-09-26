import 'package:Estimulo/src/modules/login/widgets/login_form_widget.dart';
import 'package:Estimulo/src/shared/app_colors.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final controller;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); // Keys

  LoginPage(this.controller);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20.0),
              Center(
                child: Text(
                  "Estimulo 2020",
                  style: TextStyle(color: AppColors.white, fontSize: 24),
                ),
              ),
              SizedBox(height: 30.0),
              Container(
                height: height,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(75.0)),
                ),
                child: LoginFormWidget(
                  formKey: _formKey,
                  controller: controller,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
