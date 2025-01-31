import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/custome_button.dart';
import 'package:notes_app/Widgets/cutome_textfiled.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: AddNoteButtonSheet(),
      ),
    );
  }
}
