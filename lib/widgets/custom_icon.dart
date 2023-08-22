import 'package:flutter/material.dart';



class CustomIconSearch extends StatelessWidget {
  const CustomIconSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.05), borderRadius: BorderRadius.circular(16),
        
        
        ),
        child:Center(child: Icon(Icons.search)),
      );
    
  }
}