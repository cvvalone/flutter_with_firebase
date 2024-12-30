import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:testingproj/ui/components/my_elevatedbutton.dart';
import 'package:testingproj/ui/components/my_textfield.dart';
import 'package:testingproj/ui/pages/login_screen.dart';

class SignupScreen extends StatelessWidget{
  SignupScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController mobNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: height / 2.5,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/signupBanner.png',),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    leading: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white, size: 16,),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    title: const Text(
                      "Back",
                      style: TextStyle(color: Colors.white),
                    ),
                    titleSpacing: 0,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
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
                      labelText: "Mobile number",
                      obscureText: false,
                      controller: mobNumberController,
                    ),
                    const SizedBox(height: 43),
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
                              ..onTap = () {

                              },
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
                              ..onTap = () {

                              },
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 24),
                    MyElevatedButtonRedirect(
                        color: const Color.fromRGBO(124, 117, 52, 1.0),
                        buttonText: "Continue", func: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
                    }),
                    const SizedBox(height: 40,),
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
                              children:[
                                TextSpan(text: "Log in",
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                                    }
                                )
                              ],
                            )
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
    );
  }
}