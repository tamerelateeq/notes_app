import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomeTextField extends StatelessWidget {
  const CustomeTextField(
      {super.key, required this.hintText, this.maxLines = 1, this.onSaved});
  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      onSaved: onSaved,
      maxLines: maxLines,
      decoration: InputDecoration(
        border: buildBulder(),
        enabledBorder: buildBulder(),
        focusedBorder: buildBulder(kColorPrimary),
        hintText: hintText,
      ),
    );
  }

  OutlineInputBorder buildBulder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
