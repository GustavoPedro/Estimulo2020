import 'package:flutter/material.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';

class TextFormCheckBoxPickerWidget extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final Function(String) onSaved;
  final String labelText;
  final Widget suffixIcon;
  final List<String> options;
  final String pickerTitle;
  final List<String> selectedOptions = <String>[];

  TextFormCheckBoxPickerWidget({
    Key key,
    this.textEditingController,
    this.onSaved,
    this.hintText,
    this.labelText,
    this.suffixIcon,
    this.options,
    this.pickerTitle,
  }) : super(key: key);

  _showMaterialCheckBoxPicker(BuildContext context) {
    showMaterialCheckboxPicker(
      context: context,
      title: pickerTitle,
      items: options,
      selectedItems: selectedOptions,
      onChanged: (value) {
        textEditingController.text = value.join(',');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      keyboardType: TextInputType.text,
      readOnly: true,
      showCursor: true,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        suffixIcon: suffixIcon,
      ),
      onTap: () {
        _showMaterialCheckBoxPicker(context);
      },
    );
  }
}
