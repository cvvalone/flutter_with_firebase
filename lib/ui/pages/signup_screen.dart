import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:testingproj/ui/components/my_elevatedbutton.dart';
import 'package:testingproj/ui/components/my_textfield.dart';
import 'package:testingproj/ui/pages/home_page.dart';
import 'package:testingproj/ui/pages/login_screen.dart';

class SignupScreen extends StatefulWidget {
  const   SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final confirmPasswordController = TextEditingController();

  void showMessage(String message){
    showDialog(context: context, builder: (context){
      return AlertDialog(
        backgroundColor: const Color.fromARGB(255, 144, 150, 59),
        title: Center(
          child: 
          Text(
            message,
            style: const TextStyle(color: Colors.white),
            ),
        ),
      );
    });
  }

  void signUpUser() async {
    showDialog(context: context, builder: (context){
      return const Center(
        child: CircularProgressIndicator(),);
        }
    );

    try {
      if(passwordController.text == confirmPasswordController.text){
        final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      }else{
        showMessage("Passwords don't match");
      }
      Navigator.pop(context);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
    } on FirebaseAuthException catch (e) {
      showMessage(e.code);
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        resizeToAvoidBottomInset: false,
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
            body: Column(
                  children: [ Expanded(child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Sign Up",
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
                        const SizedBox(height: 16),
                        MyTextField(
                          labelText: "Confirm password",
                          obscureText: true,
                          controller: confirmPasswordController,
                        ),
                        const SizedBox(height: 30),
                        RichText(
                          text: TextSpan(
                            text: "By signing up, you are agree to our ",
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                            children: [
                              TextSpan(
                                text: "Terms & Conditions",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {},
                              ),
                              const TextSpan(
                                text: " and ",
                              ),
                              TextSpan(
                                text: "Policies",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {},
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 24),
                        MyElevatedButtonRedirect(
                            color: const Color.fromRGBO(124, 117, 52, 1.0),
                            buttonText: "Continue",
                            func: () {
                                signUpUser();
                            }),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RichText(
                                text: TextSpan(
                              text: "Already have an account?, ",
                              style: const TextStyle(
                                color: Color.fromRGBO(0, 0, 0, .5),
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                              children: [
                                TextSpan(
                                    text: "Log in",
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
                                                    LoginScreen()));
                                      }
                                      )
                              ],
                            )),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ),
                  ]
                )
            )
          );
  }
}
