import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/add_note_button_sheet.dart';

class BuildFloatActionButton extends StatelessWidget {
  const BuildFloatActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (contex) {
              return AddNoteButtonSheet();
            });
      },
      backgroundColor: Colors.blue,
      child: const Icon(
        Icons.add,
      ),
    );
  }
}
