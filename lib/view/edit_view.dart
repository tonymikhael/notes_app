import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_tharwat/constants.dart';
import 'package:todo_tharwat/view/note_view.dart';
import 'package:todo_tharwat/widgets/customized_text_field.dart';
import 'package:todo_tharwat/widgets/notes_view_body.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Text(
                  "Edit note",
                  style: GoogleFonts.poppins(
                      fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    Get.off(NoteView());
                  },
                  child: Container(
                    height: 46,
                    width: 46,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.08),
                        borderRadius: BorderRadius.circular(16)),
                    child: Icon(
                      Icons.done,
                      size: 26,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(noteName: "noteName", maxLines: 1),
            SizedBox(
              height: 20,
            ),
            CustomTextField(noteName: "content", maxLines: 4),
          ],
        ),
      ),
    );
  }
}
