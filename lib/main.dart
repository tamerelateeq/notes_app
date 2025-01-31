import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/Model/notes_app_model.dart';
import 'package:notes_app/Views/edit_notes_view.dart';
import 'package:notes_app/Views/notes_views.dart';
import 'package:notes_app/constant.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNoteBox);
  Hive.registerAdapter(NotesAppModelAdapter());
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
