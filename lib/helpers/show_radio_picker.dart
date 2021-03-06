// Copyright (c) 2018, codegrue. All rights reserved. Use of this source code
// is governed by the MIT license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_material_pickers/dialogs/radio_picker_dialog.dart';

/// Allows selection of a single from a radio list
void showMaterialRadioPicker({
  BuildContext context,
  String title,
  List<String> items,
  String selectedItem,
  Color headerColor,
  Color headerTextColor,
  Color backgroundColor,
  Color buttonTextColor,
  ValueChanged<String> onChanged,
}) {
  showDialog<String>(
    context: context,
    builder: (BuildContext context) {
      return RadioPickerDialog(
        items: items,
        title: title,
        initialItem: selectedItem,
        headerColor: headerColor,
        headerTextColor: headerTextColor,
        backgroundColor: backgroundColor,
        buttonTextColor: buttonTextColor,
      );
    },
  ).then((selection) {
    if (onChanged != null && selection != null) onChanged(selection);
  });
}
