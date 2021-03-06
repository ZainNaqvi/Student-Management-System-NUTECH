import 'package:flutter/material.dart';

Row stactics(
    {required BuildContext context,
    required String title,
    required String value}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: Theme.of(context).textTheme.subtitle1,
      ),
      Text(
        value,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    ],
  );
}
