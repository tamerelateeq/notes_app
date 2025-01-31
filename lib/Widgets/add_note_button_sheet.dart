import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:notes_app/Widgets/add_note_form.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class AddNoteButtonSheet extends StatelessWidget {
  AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: BlocConsumer<AddNotesCubit, AddNotesState>(
          listener: (context, state) {
            if (state is AddNotesSuccess) {
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
