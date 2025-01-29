import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

// ignore: must_be_immutable
class CustomeButton extends StatelessWidget {
  String? text;
  CustomeButton({Key? key, required this.text, this.ontap}) : super(key: key);
  VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 52,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: kColorPrimary,
        ),
        child: Center(
          child: Text(
            "$text",
            style: const TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
