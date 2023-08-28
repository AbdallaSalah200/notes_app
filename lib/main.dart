import 'package:hive/hive.dart';
import 'models/note_model.dart';
import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/views/notes_views.dart';
import 'package:note_app/simple_bloc_observer.dart';
import 'package:note_app/note%20cubite/note/notes_cubit.dart';
import 'package:note_app/note%20cubite/add%20note%20cubit/add_note_cubit.dart';


//import 'package:hive_flutter/adapters.dart';

void main()async {
  
  await Hive.initFlutter() ;
  Bloc.observer =SimpleBlocObserver();
   Hive.registerAdapter(NoteModelAdapter());
 
   await Hive.openBox<NoteModel>(kNotesBox);

 
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme:  ThemeData(
            brightness: Brightness.dark,
            fontFamily: 'Poppins'
          ),
          home :const NotesView(),
        ),
    );
  }
}
