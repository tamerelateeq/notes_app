import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/add_note_button_sheet.dart';
import 'package:notes_app/Widgets/notes_views_body.dart';

class NotesViews extends StatelessWidget {
  const NotesViews({super.key});
  static String id = 'NotesViews';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (contex) {
                return AddNoteButtonSheet();
              });
        },
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.add,
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Notes',
          style: TextStyle(fontSize: 36),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 36,
              ))
        ],
      ),
      body: NotesViewsBody(),
    );
  }
}
