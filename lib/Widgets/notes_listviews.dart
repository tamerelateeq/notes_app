import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/get_notes_cubit/get_notes_cubit.dart';
import 'package:notes_app/Model/notes_app_model.dart';
import 'package:notes_app/Views/edit_notes_view.dart';
import 'package:notes_app/Widgets/custome_notes_items.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<NotesAppModel> notes = BlocProvider.of<GetNotesCubit>(context).notes!;
    return BlocBuilder<GetNotesCubit, GetNotesState>(
      builder: (context, state) {
        return ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: NoteItems(
                  onTap: () {
                    Navigator.pushNamed(context, EditNotesView.id);
                  },
                ),
              );
            });
      },
    );
  }
}
