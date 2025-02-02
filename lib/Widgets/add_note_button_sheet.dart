import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:notes_app/Cubits/get_notes_cubit/get_notes_cubit.dart';
import 'package:notes_app/Widgets/add_note_form.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: Padding(
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: BlocConsumer<AddNotesCubit, AddNotesState>(
          listener: (context, state) {
            if (state is AddNotesSuccess) {
              BlocProvider.of<GetNotesCubit>(context).GetNotes();
              Navigator.pop(context);
            } else if (state is AddNotesFailure) {
              debugPrint("this error :${state.errMassage}");
            }
          },
          builder: (context, state) {
            return SingleChildScrollView(
              child: AbsorbPointer(
                absorbing: state is AddNotesLoading ? true : false,
                child: AddNoteForm(),
              ),
            );
          },
        ),
      ),
    );
  }
}
