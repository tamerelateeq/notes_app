import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/get_notes_cubit/get_notes_cubit.dart';
import 'package:notes_app/Model/notes_app_model.dart';

class NoteItems extends StatelessWidget {
  NoteItems({
    this.onTap,
    required this.note,
    super.key,
  });
  VoidCallback? onTap;
  final NotesAppModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(right: 16, left: 24, top: 24, bottom: 24),
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  note.content,
                  style: const TextStyle(
                      color: Color.fromARGB(221, 54, 54, 54), fontSize: 16),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<GetNotesCubit>(context).GetNotes();
                  },
                  icon: Icon(
                    Icons.delete,
                    size: 35,
                    color: Colors.black,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                note.date,
                style: const TextStyle(
                  color: Color.fromARGB(221, 54, 54, 54),
                  fontSize: 16,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
