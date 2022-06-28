import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CTextFormField extends StatelessWidget {
  final TextEditingController? controller;

  final Widget? prefixIcon;
  final String hintText;
  final Widget? suffixIcon;

  const CTextFormField({
    Key? key,
    required this.hintText,
    this.controller,
    this.prefixIcon,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Theme.of(context).textTheme.caption,
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hintText: hintText,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
