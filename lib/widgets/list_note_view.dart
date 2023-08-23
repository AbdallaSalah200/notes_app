import 'custom_note_item.dart';
import 'package:flutter/material.dart';


class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListView.builder(
        
        padding:  EdgeInsets.zero,
        itemBuilder: (context,index){
      
        return  const Padding(
          padding:  EdgeInsets.symmetric(vertical:8.0),
          child: NoteItem(),
        );
      } ,),
    );
  }
}