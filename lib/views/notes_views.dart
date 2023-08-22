import 'package:flutter/material.dart';
import '../widgets/notes_view_body.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';


class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : NotesViewBody() ,
    );
  }
}
