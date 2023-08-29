import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/models/note_model.dart';
//import 'package:note_app/models/note_view_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
 Color color = const Color(0xffAC3931);
  addnote(NoteModel note) async{
    note.color= color.value;
    emit(AddNoteLoading());
    try {
  var notesbox =Hive.box<NoteModel>(kNotesBox);
  await  notesbox.add(note);
  emit(AddNoteSuccess());
}  catch (e) {
  emit(AddNoteFailure(e.toString()));
}
  }
}
