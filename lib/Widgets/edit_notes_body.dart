import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/cutome_textfiled.dart';

class EditNotesBody extends StatelessWidget {
  const EditNotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CustomeTextField(hintText: 'Title'),
          SizedBox(
            height: 16,
          ),
          CustomeTextField(
            hintText: 'Content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
