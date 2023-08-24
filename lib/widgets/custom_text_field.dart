import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return   TextField(
      cursorColor:kPrimarycolor,
     decoration: InputDecoration(
      hintStyle: TextStyle(color: kPrimarycolor),
      hintText:'Title',
      border : buildborder(),
      enabledBorder: buildborder(),
      focusedBorder: buildborder(kPrimarycolor),
     )
     
     ,
    );
  }

  OutlineInputBorder buildborder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide:  BorderSide(
        color:color?? Colors.white
      )
    );
  }
}