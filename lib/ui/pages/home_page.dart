import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:testingproj/ui/pages/welcome_screen.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  void signUserOut(context) {
    FirebaseAuth.instance.signOut();
    navigateToHome(context);
  }

  void navigateToHome(context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: (){
                signUserOut(context);
              },
              icon: Icon(Icons.logout)
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("LOGGED IN as " + user.email!),
            ],
          ),
        ],
      ),
    );
  }
}
