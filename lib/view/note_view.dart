import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:todo_tharwat/widgets/notes_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.bottomSheet(
              shape: RoundedRectangleBorder(),
              Container(
                padding: EdgeInsets.all(16),
                height: 400,
                decoration: BoxDecoration(color: Colors.black),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Note name",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                              color: Colors.deepPurple.withOpacity(0.8),
                              width: 2),
                        ),
                      ),
                    ),
                  ],
                ),
              ));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
