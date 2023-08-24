import 'package:flutter/material.dart';
import 'package:note_app/views/edit_note_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){return  EditNoteView();}));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24,bottom: 24,left: 16),
        decoration: BoxDecoration(
          color: const  Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16),
          
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
        ListTile(
          title:const  Text("Flutter tips",style: TextStyle(color:Colors.black,fontSize: 28),),
          subtitle:  Padding(
            padding: const EdgeInsets.only(top: 9),
            child: Text("Build your carrer with thrawet samy",style: TextStyle(color:Colors.black.withOpacity(.5),fontSize: 20),),
          ),
          trailing:IconButton (onPressed:(){},icon:const  Icon(FontAwesomeIcons.trash,color: Colors.black,size:24), ) ,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Text("23Aug 2023",style: TextStyle(color: Colors.black.withOpacity(.4)),),
        ),
          ],
        ) 
      ),
    );
  }
}