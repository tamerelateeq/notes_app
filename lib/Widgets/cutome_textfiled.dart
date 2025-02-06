import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomeTextField extends StatelessWidget {
  const CustomeTextField(
      {super.key,
      this.hintText,
      this.intialValue,
      this.maxLines = 1,
      this.onSaved,
      this.onChanged,
      this.icon,
      this.onPressed});
  final String? hintText;
  final String? intialValue;

  final int maxLines;
  final void Function()? onPressed;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  final IconData? icon;
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
      initialValue: intialValue,
      onChanged: onChanged,
      onSaved: onSaved,
      maxLines: maxLines,
      decoration: InputDecoration(
        prefixIcon: IconButton(onPressed: onPressed, icon: Icon(icon)),
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
