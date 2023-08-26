import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/views/notes_views.dart';
import 'package:note_app/simple_bloc_observer.dart';
import 'package:note_app/models/note_view_model.dart';
import 'package:note_app/note%20cubite/add%20note%20cubit/add_note_cubit.dart';

void main()async {
  Bloc.observer =SimpleBlocObserver();
  await Hive.initFlutter() ;
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteViewModelAdapter());
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>AddNoteCubit(), ),
      ],
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
