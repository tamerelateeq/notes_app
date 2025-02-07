import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/Model/notes_app_model.dart';
import 'package:notes_app/constant.dart';

part 'search_note_state.dart';

class SearchNoteCubit extends Cubit<SearchNoteState> {
  SearchNoteCubit() : super(SearchNoteInitial());
  emit(SearchNoteInitial);

  List<NotesAppModel> noteList = [];
  searchNote(String value) {
    try {
      var noteBox = Hive.box<NotesAppModel>(kNoteBox);

      for (var note in noteBox.values) {
        if (note.title.toLowerCase().contains(value.toLowerCase()) ||
            note.content.toLowerCase().contains(value.toLowerCase())) {
          noteList.add(note);
        }
      }
      if (noteList.isEmpty) {
        emit(SearchNoteFailure(errMassage: 'their is no result'));
      } else {
        emit(SearchNoteSuccess());
      }
    } on Exception catch (e) {
      emit(SearchNoteFailure(errMassage: 'their is error :$e'));
    }
  }
}
