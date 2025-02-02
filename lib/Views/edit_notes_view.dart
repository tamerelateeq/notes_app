import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/get_notes_cubit/get_notes_cubit.dart';
import 'package:notes_app/Model/notes_app_model.dart';
import 'package:notes_app/Widgets/edit_notes_body.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});

  static String id = 'EditNotesView';
  @override
  Widget build(BuildContext context) {
    NotesAppModel note =
        ModalRoute.of(context)!.settings.arguments as NotesAppModel;
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
              onPressed: () {
                note.save();
                BlocProvider.of<GetNotesCubit>(context).GetNotes();
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.check,
                size: 36,
              ),
            ),
          )
        ],
      ),
      body: EditNotesBody(
        note: note,
      ),
    );
  }
}
