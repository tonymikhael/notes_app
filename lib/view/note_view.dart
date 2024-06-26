import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:todo_tharwat/constants.dart';
import 'package:todo_tharwat/widgets/customized_text_field.dart';
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
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 33, 33, 33)),
                child: ListView(
                  children: [
                    CustomTextField(
                      noteName: "Note title",
                      maxLines: 1,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                      noteName: "Content",
                      maxLines: 4,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Add"),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: KprimaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)))),
                    )
                  ],
                ),
              ));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
