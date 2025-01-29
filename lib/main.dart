import 'package:flutter/material.dart';
import 'package:notes_app/Views/edit_notes_view.dart';
import 'package:notes_app/Views/notes_views.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        NotesViews.id: (context) => NotesViews(),
        EditNotesView.id: (context) => EditNotesView(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: NotesViews.id,
    );
  }
}
