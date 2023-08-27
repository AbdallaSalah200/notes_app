import '../constant.dart';
import 'package:flutter/material.dart';


class CustomButton  extends StatelessWidget {
  const CustomButton ({super.key, this.ontap,this.isLoading  =false });
final void Function()?  ontap ;
   final bool isLoading ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: kPrimarycolor,
          borderRadius: BorderRadius.circular(8)
        ),
        child: Center(
          child: isLoading ? SizedBox(height: 24,width: 24 ,   child: const  CircularProgressIndicator())  : 
        const   Text('Add',style:
           TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold),)),
      ),

    );
  }
}