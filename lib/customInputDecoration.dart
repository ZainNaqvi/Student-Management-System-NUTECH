import 'package:flutter/material.dart';

InputDecoration customInputDecoration({
  required String text,
  required IconData prefixIcon,
  required IconData? suffixIcon,
  required VoidCallback press,
}) {
  return InputDecoration(
    prefixIcon: Icon(prefixIcon),
    hintText: text,
    suffixIcon: InkWell(onTap: press, child: Icon(suffixIcon)),
  );
}
