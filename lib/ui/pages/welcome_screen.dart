import 'package:flutter/material.dart';
import 'package:testingproj/ui/pages/login_screen.dart';
import 'package:testingproj/ui/pages/signup_screen.dart';

import '../components/my_elevatedbutton.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 253, 178, 1.0),
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
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
                  const SizedBox(height: 30), // Відстань між кнопками
                  MyElevatedButtonRedirect(
                      color: const Color.fromRGBO(124, 117, 52, 1.0),
                      buttonText: "Sign up",
                      func: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SignupScreen()));
                      }
                  ),
                ],
              ),
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}