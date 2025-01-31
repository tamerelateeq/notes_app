import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/custome_button.dart';
import 'package:notes_app/Widgets/cutome_textfiled.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode? autovalidateMode = AutovalidateMode.disabled;

  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          // this textfield for Title
          CustomeTextField(
            onSaved: (value) {
              title = value;
            },
            hintText: 'Title',
          ),
          SizedBox(
            height: 16,
          ),
          // this textfield for contant
          CustomeTextField(
            onSaved: (vlaue) {
              content = vlaue;
            },
            hintText: 'Contant',
            maxLines: 5,
          ),
          SizedBox(
            height: 32,
          ),
          CustomeButton(
            ontap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
            text: 'Add',
          )
        ],
      ),
    );
  }
}
