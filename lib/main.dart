import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_tharwat/view/note_view.dart';

void main() {
  runApp(const NoteApp());
  //hello world
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: BindingsBuilder(() {}),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: NoteView(),
    );
  }
}
