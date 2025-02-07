import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/search_note_cubit/search_note_cubit.dart';

import 'package:notes_app/Widgets/cutome_textfiled.dart';
import 'package:notes_app/Widgets/no_result_notes.dart';
import 'package:notes_app/Widgets/notes_body_search.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});
  static String id = 'SearchView';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchNoteCubit(),
      child: BlocBuilder<SearchNoteCubit, SearchNoteState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: CustomeTextField(
                icon: Icons.arrow_back,
                onPressed: () {
                  Navigator.pop(context);
                },
                onChanged: (value) {
                  BlocProvider.of<SearchNoteCubit>(context).searchNote(value);
                },
              ),
            ),
            body: state is SearchNoteSuccess
                ? NotesViewsBodySearch()
                : NoResult(text: 'No Result'),
          );
        },
      ),
    );
  }
}
