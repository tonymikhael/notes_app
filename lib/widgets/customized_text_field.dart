import 'package:flutter/material.dart';
import 'package:todo_tharwat/constants.dart';

class CustomTextField extends StatelessWidget {
  final String noteName;
  final double paddingHeight;
  final double paddingWidth;
  const CustomTextField({
    required this.noteName,
    required this.paddingHeight,
    required this.paddingWidth,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: 5,
      minLines: 1,
      cursorColor: KprimaryColor,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
            vertical: paddingHeight, horizontal: paddingWidth),
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
