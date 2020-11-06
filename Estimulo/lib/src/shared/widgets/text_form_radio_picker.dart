import 'package:flutter/material.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';

class TextFormRadioPickerWidget extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final Function(String) onSaved;
  final String labelText;
  final Widget suffixIcon;
  final List<String> options;
  final String pickerTitle;

  const TextFormRadioPickerWidget({
    Key key,
    this.textEditingController,
    this.onSaved,
    this.hintText,
    this.labelText,
    this.suffixIcon,
    this.options,
    this.pickerTitle,
  }) : super(key: key);

  _showMaterialRadioPicker(BuildContext context) {
    showMaterialRadioPicker(
      context: context,
      title: pickerTitle,
      items: options,
      selectedItem: textEditingController.text,
      onChanged: (value) {
        textEditingController.text = value;
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
        suffixIcon: suffixIcon ??
            GestureDetector(
              child: Icon(Icons.arrow_drop_down),
              onTap: () {
                _showMaterialRadioPicker(context);
              },
            ),
      ),
      onTap: () {
        _showMaterialRadioPicker(context);
      },
    );
  }
}
