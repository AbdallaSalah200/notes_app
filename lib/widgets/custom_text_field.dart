import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint,  this.maxLines =1});
   final String hint ;
   final int maxLines ;
  @override
  Widget build(BuildContext context) {
    return   TextField(
      maxLines: maxLines,
      cursorColor:kPrimarycolor,
     decoration: InputDecoration(
      hintStyle: TextStyle(color: kPrimarycolor),
      hintText:hint,
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