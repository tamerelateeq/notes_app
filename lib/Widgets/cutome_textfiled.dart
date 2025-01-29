import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomeTextField extends StatelessWidget {
  const CustomeTextField(
      {super.key, required this.hintText, this.maxLines = 1});
  final String hintText;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        border: BuildBulder(),
        enabledBorder: BuildBulder(),
        focusedBorder: BuildBulder(kColorPrimary),
        hintText: hintText,
      ),
    );
  }

  OutlineInputBorder BuildBulder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
