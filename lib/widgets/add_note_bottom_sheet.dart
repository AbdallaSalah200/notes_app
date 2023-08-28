import 'add_form_note.dart';
import 'custom_button.dart';
import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/widgets/custom_text_field.dart';
import 'package:note_app/note%20cubite/note/notes_cubit.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/note%20cubite/add%20note%20cubit/add_note_cubit.dart';




class AddnotelBottomSheet extends StatelessWidget {
  const AddnotelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return   BlocProvider(
      create:  (context)=> AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit,AddNoteState>(
        listener:(context,state)
        {
          if (state is AddNoteSuccess)
          {
            BlocProvider.of<NotesCubit>(context).fetchallnotes();
            Navigator.pop(context);
          }
          if(state is AddNoteFailure){
            print('there is Wrong  ${state.errmessage}');
          }
        },
        builder: (context,state){
          return       AbsorbPointer(
            absorbing:  state is AddNoteLoading ? true: false,
            child:   Padding(
              padding:  EdgeInsets.only(
                left: 16,
              right: 16,
              bottom:MediaQuery.of(context).viewInsets.bottom
              
              
              ),
              child:     SingleChildScrollView(child:  AddNoteForm()),
            ),
          );
        },
        
      
      ),
    );
  }
}

