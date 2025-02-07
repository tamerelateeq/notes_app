import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/Model/notes_app_model.dart';
import 'package:notes_app/constant.dart';

part 'search_note_state.dart';

class SearchNoteCubit extends Cubit<SearchNoteState> {
  SearchNoteCubit() : super(SearchNoteInitial());
  emit(SearchNoteLoading);
  List<NotesAppModel> notes = [];
  searchNoteCubit(String query) {
    var notesBox = Hive.box<NotesAppModel>(kNoteBox);
    try {
      for (var note in notesBox.values) {
        if (note.title.toLowerCase().contains(query.toLowerCase()) ||
            note.content.toLowerCase().contains(query.toLowerCase())) {
          notes.add(note);
        }
        if (notes.isEmpty) {
          emit(SearchNoteFailure(errMassage: 'Their is no result'));
        } else {
          emit(SearchNoteSuccess());
        }
      }
    } on Exception catch (e) {
      emit(SearchNoteFailure(errMassage: 'this is exiption: ${e.toString()}'));
    }
  }
}
