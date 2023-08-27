import 'custom_button.dart';
import 'custom_text_field.dart';
import '../models/note_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/note%20cubite/add%20note%20cubit/add_note_cubit.dart';






class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState>formkey =GlobalKey();
  AutovalidateMode autovalidateMode =AutovalidateMode.disabled;
  String?title; 
  String ?subtitle ;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        children:  [
        const   SizedBox(
            height: 32,
          ),
          CustomTextFormField(
            
            
            hint: 'Title',
         
          ),
          const  SizedBox(height: 16,),
          CustomTextFormField(
             onsaved: (value){
            title =value ;
          },
            
            hint: 'content',maxLines: 5,
         
          ),
          const SizedBox(height: 40,),
          CustomButton(
          ontap: (){

if(formkey.currentState!.validate()){
  formkey.currentState!.save();
  var noteBox =NoteModel(  title:  '0'  ,subtitle: '1', color: Colors.blue.value, date: DateTime.now().toString());
  BlocProvider.of<AddNoteCubit>(context).addnote(noteBox);
}else{
   autovalidateMode =AutovalidateMode.always;
  setState(() {
    
  });
}

          },
          
          )
        ],
      ),
    );
  }
}
