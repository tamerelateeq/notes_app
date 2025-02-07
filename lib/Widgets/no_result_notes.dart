import 'package:flutter/material.dart';

class NoResult extends StatelessWidget {
  const NoResult({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 31,
        ),
      ),
    );
  }
}
