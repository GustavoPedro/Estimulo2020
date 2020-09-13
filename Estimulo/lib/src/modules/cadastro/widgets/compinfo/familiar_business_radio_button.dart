import 'package:flutter/material.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';

enum FamiliarBusinessEnum { yes, no }

class FamiliarBusinessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> usStates = <String>[
      'Alabama',
      'Alaska',
      'Arizona',
      'Arkansas',
      'California',
      'Colorado',
      'Connecticut',
    ];
    String selectedUsState = usStates[0];

    _showMaterialRadioPicker() {
      showMaterialRadioPicker(
        context: context,
        title: "Pick Your City",
        items: usStates,
        selectedItem: selectedUsState,
        onChanged: (value) {},
      );
    }

    return TextFormField(
      showCursor: false,
      readOnly: true,
      onTap: () {
        _showMaterialRadioPicker();
      },
    );
  }
}
