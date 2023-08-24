import 'custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:note_app/widgets/list_note_view.dart';
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
     CustomAppBar(
      title:'Notes',
      icon: Icons.search,
     ),
     Expanded(child: NoteListView())
        ],
      ),
    );
  }
}

