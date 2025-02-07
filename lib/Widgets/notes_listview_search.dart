import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/cubit/search_note_cubit.dart';
import 'package:notes_app/Model/notes_app_model.dart';
import 'package:notes_app/Views/edit_notes_view.dart';
import 'package:notes_app/Widgets/custome_notes_items.dart';

class NoteListViewSearch extends StatelessWidget {
  const NoteListViewSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<NotesAppModel> notes =
        BlocProvider.of<SearchNoteCubit>(context).noteList;
    return ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: NoteItems(
              note: notes[index],
              onTap: () {
                Navigator.pushNamed(context, EditNotesView.id,
                    arguments: notes[index]);
              },
            ),
          );
        });
  }
}
