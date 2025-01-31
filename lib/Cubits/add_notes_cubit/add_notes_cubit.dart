import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/Model/notes_app_model.dart';
import 'package:notes_app/constant.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());
  emit(AddNotesLoading);
  addNotes(NotesAppModel note) async {
    try {
      var notesBox = Hive.box<NotesAppModel>(kNoteBox);
      await notesBox.add(note);
      emit(AddNotesSuccess());
    } on Exception catch (e) {
      emit(AddNotesFailure(e.toString()));
    }
  }
}
