import 'package:flutter/material.dart';

class TextFormWithDecoration extends StatelessWidget {
  final TextEditingController textEditingController;
  final String initialValue;
  final String hintText;
  final Function(String) onSaved;
  final Function(String) onEdit;
  final Function(String) onValidate;
  final String labelText;
  final bool obscureText;
  final Widget suffixIcon;
  final TextInputType keyboardType;
  final int maxLines;

  const TextFormWithDecoration({
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
    this.keyboardType,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines ?? 1,
      controller: textEditingController,
      keyboardType: this.keyboardType ?? TextInputType.text,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        suffixIcon: suffixIcon,
      ),
      obscureText: obscureText ?? false,
      onSaved: (val) {
        if (onSaved != null) {
          onSaved(val);
        }
      },
      onChanged: (val) {
        if (onEdit != null) {
          onEdit(val);
        }
      },
      validator: (val) {
        return onValidate(val);
      },
    );
  }
}
