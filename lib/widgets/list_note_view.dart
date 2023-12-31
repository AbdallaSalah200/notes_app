import 'custom_note_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/note%20cubite/note/notes_cubit.dart';
class NoteListView extends StatelessWidget {
  const NoteListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel>notes =BlocProvider.of<NotesCubit>(context).notes?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: ListView.builder(
            
            padding:  EdgeInsets.zero,
            itemCount: notes.length,
            itemBuilder: (context,index){
            
            return  Padding(
              padding: const  EdgeInsets.symmetric(vertical:8.0),
              child: NoteItem(
                note: notes[index],
              ),
            );
          } ,),
        );
      },
    );
  }
}