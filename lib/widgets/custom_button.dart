import '../constant.dart';
import 'package:flutter/material.dart';


class CustomButton  extends StatelessWidget {
  const CustomButton ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: kPrimarycolor,
        borderRadius: BorderRadius.circular(8)
      ),
      child: Center(child: Text('Add',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),
    );
  }
}