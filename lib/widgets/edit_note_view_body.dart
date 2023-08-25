import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Edit Notes ',
            icon: Icons.check,
    
          ),
           SizedBox(
            height: 50,
          ),
          CustomTextFormField(hint: 'title'),
           SizedBox(
            height: 16,
          ),
          CustomTextFormField(hint: 'content',maxLines: 5,),
        ],
      ),
    );
  }
}