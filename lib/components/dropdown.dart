import 'package:flutter/material.dart';

import '../customInputDecoration.dart';

DropdownButtonFormField<Object> dropDownButtonFormFIeld({
  required String hintText,
  required IconData prefixIcon,
  required IconData? suffixIcon,
  required VoidCallback press,
  required ValueChanged onChanged,
  required ValueChanged onSaved,
  required List<DropdownMenuItem<Object>>? items,
  required Object? value,
  required BuildContext context,
}) {
  return DropdownButtonFormField(
    style: Theme.of(context).textTheme.caption,
    decoration: customInputDecoration(
      text: hintText,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      press: press,
    ),
    value: value,
    isExpanded: true,
    onChanged: onChanged,
    onSaved: onSaved,
    items: items,
  );
}
