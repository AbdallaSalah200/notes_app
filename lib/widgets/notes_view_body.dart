import 'custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_note_item.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';




class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:16 ),
      child: Column(
        children: const[
          SizedBox(height: 45,),
     CustomAppBar(),
     Expanded(child: NoteListView())
        ],
      ),
    );
  }
}
class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
    
      return  const Padding(
        padding:  EdgeInsets.symmetric(vertical:8.0),
        child: NoteItem(),
      );
    } ,);
  }
}
