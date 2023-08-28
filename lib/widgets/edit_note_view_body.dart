import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_field.dart';
import 'package:note_app/note%20cubite/note/notes_cubit.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
final NoteModel note ;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title ,content ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children:  [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onPressed: (){
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchallnotes();
              Navigator.pop(context);
            },
            title: 'Edit Notes ',
            icon: Icons.check,
    
          ),
         const   SizedBox(
            height: 50,
          ),
          CustomTextFormField(
            onchange: (value){
          title = value;   
            },
            hint: 'title'),
          const  SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            onchange: (value){
            content =value ;
            },
            
            hint: 'content',maxLines: 5,),
        ],
      ),
    );
  }
}