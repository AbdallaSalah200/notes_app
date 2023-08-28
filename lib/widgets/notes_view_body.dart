import 'custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/widgets/list_note_view.dart';
import 'package:note_app/widgets/custom_note_item.dart';
import 'package:note_app/note%20cubite/note/notes_cubit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';







class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  void initstate (){
    BlocProvider.of<NotesCubit>(context).fetchallnotes();
    super.initState();
  }
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

