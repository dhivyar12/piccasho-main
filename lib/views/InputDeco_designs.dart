import 'package:flutter/material.dart';

InputDecoration buildInputDecorations(String hinttext) {
  return InputDecoration(
    hintText: hinttext,
    hintStyle: TextStyle(color: Colors.orange),
    //prefixIcon: Icon(icons),
    // focusedBorder: OutlineInputBorder(
    //   borderRadius: BorderRadius.circular(25.0),
    //   borderSide: BorderSide(color: Colors.green, width: 1.5),
    // ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.0),
      borderSide: BorderSide(
        color: Colors.orange,
        width: 1.5,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.0),
      borderSide: BorderSide(
        color: Colors.orange,
        width: 1.5,
      ),
    ),
  );
}
