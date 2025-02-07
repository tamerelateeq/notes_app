import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/Model/notes_app_model.dart';
import 'package:notes_app/constant.dart';

part 'get_notes_state.dart';

class GetNotesCubit extends Cubit<GetNotesState> {
  GetNotesCubit() : super(GetNotesInitial());
  List<NotesAppModel>? notes;
  getNotes() {
    var notesBox = Hive.box<NotesAppModel>(kNoteBox);
    notes = notesBox.values.toList();
    emit(GetNotesSuccess());
  }
}
