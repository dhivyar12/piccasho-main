import 'package:flutter/material.dart';

InputDecoration buildInputDecoration(String hinttext) {
  return InputDecoration(
    hintText: hinttext,
    hintStyle: TextStyle(color: Color(0xff898989)),
    //prefixIcon: Icon(icons),
    // focusedBorder: OutlineInputBorder(
    //   borderRadius: BorderRadius.circular(25.0),
    //   borderSide: BorderSide(color: Colors.green, width: 1.5),
    // ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.0),
      borderSide: BorderSide(
        color: Color(0xff797979),
        width: 1.5,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.0),
      borderSide: BorderSide(
        color: Color(0xff898989),
        width: 1.5,
      ),
    ),
  );
}
