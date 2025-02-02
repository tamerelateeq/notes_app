import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/get_notes_cubit/get_notes_cubit.dart';
import 'package:notes_app/Model/notes_app_model.dart';

import 'package:notes_app/Widgets/notes_listviews.dart';

class NotesViewsBody extends StatefulWidget {
  const NotesViewsBody({super.key});

  @override
  State<NotesViewsBody> createState() => _NotesViewsBodyState();
}

class _NotesViewsBodyState extends State<NotesViewsBody> {
  @override
  void initState() {
    BlocProvider.of<GetNotesCubit>(context).GetNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetNotesCubit, GetNotesState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(
                child: NoteListView(),
              ),
            ],
          ),
        );
      },
    );
  }
}
