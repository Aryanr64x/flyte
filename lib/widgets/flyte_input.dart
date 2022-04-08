// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FlyteInput extends StatelessWidget {
  const FlyteInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search awesome products here...",
        prefixIcon: Icon(
          Icons.search,
          color: Color(0xff572504),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff572504)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff572504),
          ),
        ),
      ),
    );
  }
}
