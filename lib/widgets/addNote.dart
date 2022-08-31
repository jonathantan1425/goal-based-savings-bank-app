
import 'package:app/utilities/themeColors.dart';
import 'package:flutter/material.dart';

class AddNote extends StatefulWidget {
  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 8.0,
      left: 16.0,
      right: 16.0,

      child: Container(
        height: 44.0,
        width: 345.0,
        child: Center(
          child: Text(
            'Add a Note',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: ThemeColors.kSecondaryColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
      )
    );
  }
}
