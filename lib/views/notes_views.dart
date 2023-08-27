import 'package:flutter/material.dart';
import '../widgets/notes_view_body.dart';
import '../widgets/add_note_bottom_sheet.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:note_app/note%20cubite/note/notes_cubit.dart';


class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
          floatingActionButton: FloatingActionButton(onPressed: (){
        showModalBottomSheet(
          isScrollControlled: true,
          shape:  RoundedRectangleBorder(
            borderRadius:  BorderRadius.circular(16)
          ),
          
          context: context, builder: (context){
          
          return   const AddnotelBottomSheet();
        });
            
          },child:const   Icon(Icons.add)),
          body :const  NotesViewBody(
            
          ) ,
        ),
    );
  }
}
