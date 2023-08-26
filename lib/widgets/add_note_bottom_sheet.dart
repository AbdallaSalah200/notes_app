import 'add_form_note.dart';
import 'custom_button.dart';
import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/widgets/custom_text_field.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/note%20cubite/add%20note%20cubit/add_note_cubit.dart';



class AddnotelBottomSheet extends StatelessWidget {
  const AddnotelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child:BlocConsumer<AddNoteCubit,AddNoteState>(
          listener:(context,state)
          {
            if (state is AddNoteSuccess)
            {
              Navigator.pop(context);
            }
            if(state is AddNoteFailure){
              print('there is Wrong  ${state.errmessage}');
            }
          },
          builder: (context,state){
            return      ModalProgressHUD(
              inAsyncCall: state is AddNoteLoading ? true:false,
              
              child:const  AddNoteForm());
          },
          
        
      ),
      ),
    );
  }
}

