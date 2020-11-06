import 'package:Estimulo/src/shared/widgets/text_form_with_decoration.dart';
import 'package:flutter/material.dart';

class TextFormRequired extends StatelessWidget {
  final TextEditingController textEditingController;
  final String initialValue;
  final String hintText;
  final Function(String) onSaved;
  final Function(String) onEdit;
  final Function(String) onValidate;
  final String labelText;
  final bool obscureText;
  final Widget suffixIcon;
  final String requiredErrorMsg;
  final TextInputType keyboardType;

  const TextFormRequired({
    Key key,
    this.textEditingController,
    this.initialValue,
    this.onSaved,
    this.onEdit,
    this.hintText,
    this.labelText,
    this.obscureText,
    this.suffixIcon,
    this.onValidate,
    this.requiredErrorMsg,
    this.keyboardType,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return TextFormWithDecoration(
      keyboardType: this.keyboardType ?? TextInputType.text,
      hintText: hintText,
      initialValue: initialValue,
      key: key,
      labelText: labelText + "*",
      obscureText: obscureText,
      textEditingController: textEditingController,
      onEdit: onEdit,
      suffixIcon: suffixIcon,
      onSaved: onSaved,
      onValidate: (val) {
        if (val.isEmpty) {
          return this.requiredErrorMsg ?? "Campo obrigatório";
        }
        if (onValidate != null) {
          return onValidate(val);
        }
      },
    );
  }
}
