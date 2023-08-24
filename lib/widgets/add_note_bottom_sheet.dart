import 'custom_button.dart';
import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/widgets/custom_text_field.dart';


class AddnotelBottomSheet extends StatelessWidget {
  const AddnotelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children:const   [
            SizedBox(
              height: 32,
            ),
            CustomTextField(hint: 'Title'),
            SizedBox(height: 16,),
            CustomTextField(hint: 'content',maxLines: 5,),
            SizedBox(height: 40,),
            CustomButton()
          ],
        ),
      ),
    );
  }
}
