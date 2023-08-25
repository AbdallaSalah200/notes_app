import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/views/notes_views.dart';
import 'package:note_app/models/note_view_model.dart';

void main()async {
  await Hive.initFlutter() ;
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteViewModelAdapter());
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:  ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins'
      ),
      home :const NotesView(),
    );
  }
}
