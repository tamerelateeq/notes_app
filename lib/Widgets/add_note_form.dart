import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/Cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:notes_app/Model/notes_app_model.dart';
import 'package:notes_app/Widgets/color_list_view.dart';
import 'package:notes_app/Widgets/custome_button.dart';
import 'package:notes_app/Widgets/cutome_textfiled.dart';
import 'package:notes_app/Widgets/cutsome_color_item.dart';

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
            height: 16,
          ),
          ColorListView(),
          SizedBox(
            height: 16,
          ),
          BlocBuilder<AddNotesCubit, AddNotesState>(
            builder: (context, state) {
              return BuildCustomeButton(state, context);
            },
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  CustomeButton BuildCustomeButton(AddNotesState state, BuildContext context) {
    return CustomeButton(
      isLoading: state is AddNotesLoading ? true : false,
      ontap: () {
        if (formKey.currentState!.validate()) {
          formKey.currentState!.save();
          var currentDate = DateTime.now();
          var formateCurrentDate = DateFormat.yMEd().format(currentDate);
          var notesModel = NotesAppModel(
            title: title!,
            content: content!,
            date: formateCurrentDate,
            color: Colors.black.r,
          );
          BlocProvider.of<AddNotesCubit>(context).addNotes(notesModel);
        } else {
          autovalidateMode = AutovalidateMode.always;
          setState(() {});
        }
      },
      text: 'Add',
    );
  }
}
