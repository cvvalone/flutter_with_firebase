import 'package:flutter/material.dart';
import 'package:testingproj/ui/pages/login_screen.dart';
import 'package:testingproj/ui/pages/signup_screen.dart';

import '../components/my_elevatedbutton.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 253, 178, 1.0), // Встановлення фону
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Text(
                  'TapTapuli',
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  MyElevatedButtonRedirect(
                      color: const Color.fromRGBO(124, 117, 52, 1.0),
                      buttonText: "Log in",
                      func: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                      }
                  ),
                  SizedBox(height: 30), // Відстань між кнопками
                  MyElevatedButtonRedirect(
                      color: const Color.fromRGBO(124, 117, 52, 1.0),
                      buttonText: "Sign up",
                      func: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
                      }
                  ),
                ],
              ),
            ),
            SizedBox(height: 80), // Відстань від нижньої кнопки до низу екрану
          ],
        ),
      ),
    );
  }
}