import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:testingproj/ui/components/my_elevatedbutton.dart';
import 'package:testingproj/ui/components/my_textfield.dart';
import 'package:testingproj/ui/pages/home_page.dart';
import 'package:testingproj/ui/pages/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  void signUserIn() async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      navigateToHome();
    } on FirebaseAuthException catch (e) {
      showMessage(e.code);
    }
  }

  void showMessage(String message) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: const Color.fromARGB(255, 144, 150, 59),
            title: Center(
              child: Text(
                message,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          );
        });
  }

  void navigateToHome() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        body: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool isBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  expandedHeight: height / 3,
                  floating: false,
                  leading: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                  pinned: true,
                  backgroundColor: const Color.fromARGB(255, 144, 150, 59),
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image.asset(
                      "assets/images/signupBanner.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ];
            },
            body: Column(children: [
              Expanded(
                child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Log in",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                            letterSpacing: -1.5,
                          ),
                        ),
                        const SizedBox(height: 20),
                        MyTextField(
                          labelText: "Email adress",
                          obscureText: false,
                          controller: emailController,
                        ),
                        const SizedBox(height: 16),
                        MyTextField(
                          labelText: "Password",
                          obscureText: true,
                          controller: passwordController,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Forgot password?",
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 23),
                        MyElevatedButtonRedirect(
                            buttonText: "Continue",
                            func: signUserIn,
                            color: const Color.fromRGBO(124, 117, 52, 1.0)),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Expanded(
                                child: Divider(
                              thickness: 0.5,
                              color: Colors.grey,
                            )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text(
                                "or",
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ),
                            const Expanded(
                                child: Divider(
                              thickness: 0.5,
                              color: Colors.grey,
                            ))
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        MyElevatedButtonRedirect(
                            color: const Color.fromRGBO(124, 117, 52, 1.0),
                            buttonText: "Continue with Google",
                            func: () {}),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RichText(
                                text: TextSpan(
                              text: "Don'have an account?, ",
                              style: const TextStyle(
                                color: Color.fromRGBO(0, 0, 0, .5),
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                              children: [
                                TextSpan(
                                    text: "Sign up",
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SignupScreen()));
                                      })
                              ],
                            )),
                          ],
                        ),
                      ],
                    )),
              ),
            ])));
  }
}
