import 'package:flutter/material.dart';
import 'package:todo_tharwat/constants.dart';

class CustomTextField extends StatelessWidget {
  final String noteName;
  final int maxLines;
  const CustomTextField({
    required this.noteName,
    required this.maxLines,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: KprimaryColor,
      decoration: InputDecoration(
        hintText: "Note name",
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide:
              BorderSide(color: KprimaryColor.withOpacity(0.8), width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide:
              BorderSide(color: KprimaryColor.withOpacity(0.8), width: 2),
        ),
      ),
    );
  }
}
