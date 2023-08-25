import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.hint,  this.maxLines =1, this.onsaved});
   final String hint ;
   final int maxLines ;
   final  void Function(String?)? onsaved;
  @override
  Widget build(BuildContext context) {
    return   TextFormField(
      onSaved: onsaved,
      validator: (value){
        if(value?.isEmpty ?? true){
          
          return 'field ';
        }else{
          return null;
        }
      },
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