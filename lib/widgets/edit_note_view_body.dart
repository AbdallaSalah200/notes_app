import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_app_bar.dart';

class EditNoteViewZBody extends StatelessWidget {
  const EditNoteViewZBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          CustomAppBar(
            title: 'Edit Notes ',
            icon: Icons.check,
    
          )
        ],
      ),
    );
  }
}