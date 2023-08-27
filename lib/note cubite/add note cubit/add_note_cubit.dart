import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constant.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/models/note_model.dart';
//import 'package:note_app/models/note_view_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  addnote(NoteModel note){
    emit(AddNoteLoading());
    try {
  var notesbox =Hive.box<NoteModel>(kNotesBox);
  notesbox.add(note);
  emit(AddNoteSuccess());
}  catch (e) {
  emit(AddNoteFailure(e.toString()));
}
  }
}
