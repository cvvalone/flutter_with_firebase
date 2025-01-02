import 'package:flutter/material.dart';
import 'package:testingproj/ui/components/my_textfield.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    
    const List<Widget>  textFields = [
      MyTextField(labelText: "sdsd", obscureText: false),
      MyTextField(labelText: "sdsd", obscureText: false),
      MyTextField(labelText: "sdsd", obscureText: false),
      MyTextField(labelText: "sdsd", obscureText: false),
      MyTextField(labelText: "sdsd", obscureText: false),
      MyTextField(labelText: "sdsd", obscureText: false),
      MyTextField(labelText: "sdsd", obscureText: false),
      MyTextField(labelText: "sdsd", obscureText: false),
      MyTextField(labelText: "sdsd", obscureText: false),
      MyTextField(labelText: "sdsd", obscureText: false),
      MyTextField(labelText: "sdsd", obscureText: false),
      MyTextField(labelText: "sdsd", obscureText: false),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: textFields,
      ),
    );
  }
}