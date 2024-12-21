import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String labelText;
  final controller;
  final bool obscureText;
  const MyTextField({super.key, required this.labelText, required this.obscureText, this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black.withOpacity(0.5),
            width: 1.0,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black.withOpacity(1.0),
            width: 2.0,
          ),
        ),
      ),
    );
  }
}
