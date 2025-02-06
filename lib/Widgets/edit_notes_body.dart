import 'package:flutter/material.dart';
import 'package:notes_app/Model/notes_app_model.dart';
import 'package:notes_app/Widgets/color_list_edit_view.dart';
import 'package:notes_app/Widgets/cutome_textfiled.dart';

class EditNotesBody extends StatelessWidget {
  const EditNotesBody({super.key, required this.note});
  final NotesAppModel note;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CustomeTextField(
            onChanged: (value) {
              note.title = value;
            },
            intialValue: note.title,
          ),
          SizedBox(
            height: 16,
          ),
          CustomeTextField(
            onChanged: (value) {
              note.content = value;
            },
            intialValue: note.content,
            maxLines: 15,
          ),
          SizedBox(
            height: 13,
          ),
          ColorListEditView(
            note: note,
          )
        ],
      ),
    );
  }
}
