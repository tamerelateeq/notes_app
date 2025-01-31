import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/custome_button.dart';
import 'package:notes_app/Widgets/cutome_textfiled.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 32,
              ),
              // this textfield for Title
              CustomeTextField(
                hintText: 'Title',
              ),
              SizedBox(
                height: 16,
              ),
              // this textfield for contant
              CustomeTextField(
                hintText: 'Contant',
                maxLines: 5,
              ),
              SizedBox(
                height: 32,
              ),
              CustomeButton(
                text: 'Add',
              )
            ],
          ),
        ),
      ),
    );
  }
}
