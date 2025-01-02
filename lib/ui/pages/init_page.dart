import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:testingproj/ui/pages/home_page.dart';
import 'package:testingproj/ui/pages/welcome_screen.dart';

class InitializePage extends StatelessWidget {
  const InitializePage({super.key});

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 253, 178, 1.0),
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.waiting || snapshot.connectionState == ConnectionState.none){
            return const Center(
              child: CircularProgressIndicator(
                color:  Color.fromRGBO(124, 117, 52, 1.0),
              ),
            );
          }
          else if(snapshot.hasData){
            return HomePage();
          }
          else{
            return const WelcomeScreen();
          }
          
        },
      ),
    );
  }
}