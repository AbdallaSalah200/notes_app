import 'custom_button.dart';
import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/widgets/custom_text_field.dart';


class AddnotelBottomSheet extends StatelessWidget {
  const AddnotelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

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
          CustomTextFormField(hint: 'Title',
          onsaved: (value){
            title =value ;
          },
          ),
          const  SizedBox(height: 16,),
          CustomTextFormField(hint: 'content',maxLines: 5,
          onsaved: (value){
          subtitle =value;
          },
          ),
          const SizedBox(height: 40,),
          CustomButton(
          ontap: (){

if(formkey.currentState!.validate()){
  formkey.currentState!.save();
}else{
  AutovalidateMode autovalidateMode =AutovalidateMode.always;
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
