import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/notes_listview_search.dart';

class NotesViewsBodySearch extends StatefulWidget {
  const NotesViewsBodySearch({super.key});

  @override
  State<NotesViewsBodySearch> createState() => _NotesViewsBodySearchState();
}

class _NotesViewsBodySearchState extends State<NotesViewsBodySearch> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Expanded(
            child: NoteListViewSearch(),
          ),
        ],
      ),
    );
  }
}
