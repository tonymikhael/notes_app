import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_tharwat/widgets/customized_note.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Text(
                "Notes",
                style: GoogleFonts.poppins(
                    fontSize: 28, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Container(
                height: 46,
                width: 46,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.08),
                    borderRadius: BorderRadius.circular(16)),
                child: Icon(
                  Icons.search,
                  size: 26,
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.separated(
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 20,
                  );
                },
                itemCount: 5,
                itemBuilder: ((context, index) {
                  return Cusomized_note();
                })),
          )
        ],
      ),
    );
  }
}
