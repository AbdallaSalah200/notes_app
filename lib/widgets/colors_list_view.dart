import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/note%20cubite/add%20note%20cubit/add_note_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
final bool isActive ;
final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive ? CircleAvatar(
      backgroundColor: Colors.white,
      radius: 34,
      child:  CircleAvatar(
        radius: 38,
        backgroundColor: color,
    
      ),
    ):  CircleAvatar(
      radius: 38,
      backgroundColor:color ,

    );
  }
}
class ColorslistItem  extends StatefulWidget {
  const ColorslistItem ({super.key});

  @override
  State<ColorslistItem> createState() => _ColorslistItemState();
}

class _ColorslistItemState extends State<ColorslistItem> {
  int currentindex =0;
  List<Color>colors = const   [
   Color(0xffAC3931),
  Color(0xffE5D352),
  Color(0xffD9E76C),
  Color(0xff537D8D),
  Color(0xff482C3D),
  
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38*2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: () {
              currentindex=index;
              BlocProvider.of<AddNoteCubit>(context).color =  colors[index];
              setState(() {
                
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:  4),
              child: ColorItem(
                color: colors[index],
                isActive:  currentindex==index,
              ),
            ),
          );
        },
      ),
    );
  }
}