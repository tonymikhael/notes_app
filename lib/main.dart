import 'package:flutter/material.dart';
import 'package:todo_tharwat/view/note_view.dart';

void main() {
  runApp(const NoteApp());
  //hello world
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home:const NoteView(),
    );
  }
}
