import 'package:flutter/material.dart';

class MyElevatedButtonRedirect extends StatelessWidget {
  final VoidCallback func;
  final String buttonText;
  final Color color;

  const MyElevatedButtonRedirect({super.key, required this.buttonText, required this.func, required this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: func,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.white,
        minimumSize: const Size(double.infinity, 60),
        padding: const EdgeInsets.symmetric(vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7),
        ),
      ),
      child: Text(
        '${buttonText}',
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500
        ),
      ),
    );
  }
}
