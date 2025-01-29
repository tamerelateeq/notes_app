import 'package:flutter/material.dart';
import 'package:notes_app/Views/edit_notes_view.dart';
import 'package:notes_app/Widgets/custome_notes_items.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: NoteItems(
          onTap: () {
            Navigator.pushNamed(context, EditNotesView.id);
          },
        ),
      );
    });
  }
}
