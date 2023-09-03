// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      required this.onPressed,
      this.iconData,
      this.height,
      required this.text,
      this.width,
      this.backgroundColor});
  @required
  String text;
  IconData? iconData;
  VoidCallback onPressed;
  double? width;
  double? height;

  Color? backgroundColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? Colors.red),
      child: Text(
        text,
        textAlign: TextAlign.center,
      ),
    );
  }
}
