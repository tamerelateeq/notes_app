import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/Cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:notes_app/Cubits/get_notes_cubit/get_notes_cubit.dart';
import 'package:notes_app/Model/notes_app_model.dart';
import 'package:notes_app/Views/edit_notes_view.dart';
import 'package:notes_app/Views/notes_views.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/simple_bloc_observer.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  // Be careful to put  registerAdapter above openbox
  Hive.registerAdapter(NotesAppModelAdapter());
  await Hive.openBox<NotesAppModel>(kNoteBox);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetNotesCubit(),
      child: MaterialApp(
        routes: {
          NotesViews.id: (context) => NotesViews(),
          EditNotesView.id: (context) => EditNotesView(),
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        initialRoute: NotesViews.id,
      ),
    );
  }
}
