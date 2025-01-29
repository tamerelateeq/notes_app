import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/custome_notes_items';

class NotesViewsBody extends StatelessWidget {
  const NotesViewsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          CustomeNoteItems(),
        ],
      ),
    );
  }
}
