import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/edit_note_view.dart';
import 'package:note_app/note%20cubite/note/notes_cubit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
       final NoteModel note ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){return  EditNoteView( note: note,);}));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24,bottom: 24,left: 16),
        decoration: BoxDecoration(
          color:  Color(note.color),
          borderRadius: BorderRadius.circular(16),
          
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
        ListTile(
          title:  Text(note.title,style:const  TextStyle(color:Colors.black,fontSize: 28),),
          subtitle:  Padding(
            padding: const EdgeInsets.only(top: 9),
            child: Text(note.subTitle,style: TextStyle(color:Colors.black.withOpacity(.5),fontSize: 20),),
          ),
          trailing:IconButton (onPressed:(){
         note.delete();
        BlocProvider.of<NotesCubit>(context).fetchallnotes();
          },icon:const  Icon(FontAwesomeIcons.trash,color: Colors.black,size:24), ) ,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Text(note.date,style: TextStyle(color: Colors.black.withOpacity(.4)),),
        ),
          ],
        ) 
      ),
    );
  }
}