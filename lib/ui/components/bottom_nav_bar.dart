import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:testingproj/ui/pages/home_page.dart';
import 'package:testingproj/ui/pages/messages_screen.dart';
import 'package:testingproj/ui/pages/welcome_screen.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({super.key});

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {

void signUserOut() {
    FirebaseAuth.instance.signOut();
    navigateToHome();
  }

  void navigateToHome() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const WelcomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.home_outlined,
                ),
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
              IconButton(
                icon: const Icon(Icons.category_outlined),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.shopping_cart_outlined),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.message_outlined),
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MessagesScreen()));
                },
              ),
              IconButton(
                icon: const Icon(Icons.manage_accounts),
                onPressed: () {
                  signUserOut();
                },
              ),
            ],
          ),
        ),
      );
  }
}