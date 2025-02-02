import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/build_float_action_button.dart';
import 'package:notes_app/Widgets/notes_views_body.dart';

class NotesViews extends StatelessWidget {
  const NotesViews({super.key});
  static String id = 'NotesViews';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: BuildFloatActionButton(),
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
