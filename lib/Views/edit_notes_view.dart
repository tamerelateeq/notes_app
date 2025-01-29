import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/edit_notes_body.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});
  static String id = 'EditNotesView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Notes',
          style: TextStyle(fontSize: 25),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.check,
                size: 36,
              ),
            ),
          )
        ],
      ),
      body: EditNotesBody(),
    );
  }
}
