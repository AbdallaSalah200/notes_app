part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

 class NotesInitial extends NotesState {}
  class NotesLoading  extends NotesState {}
class NotesSuccess extends NotesState {
    List<NoteModel>note ;
  NotesSuccess(
     this.note,
  );
   }
   class NotesFaiulaer extends NotesState {
      final String errmessage;

  NotesFaiulaer( this.errmessage);
    }
