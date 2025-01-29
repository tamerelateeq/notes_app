import 'package:flutter/material.dart';

import 'package:notes_app/Widgets/custome_notes_items.dart';

class NotesViewsBody extends StatelessWidget {
  const NotesViewsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Expanded(child: ListView.builder(itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: NoteItems(),
            );
          }))
        ],
      ),
    );
  }
}
