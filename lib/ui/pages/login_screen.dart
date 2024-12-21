import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:testingproj/ui/components/my_elevatedbutton.dart';
import 'package:testingproj/ui/components/my_textfield.dart';
import 'package:testingproj/ui/pages/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    void signUserIn () {

    }

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height:
                    MediaQuery.of(context).size.height / 2.5, // Половина екрана
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/loginBanner.png',
                    ),
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
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  title: Text(
                    "Back",
                    style: TextStyle(color: Colors.white),
                  ),
                  titleSpacing: 0,
                ),
              ),
            ],
          ),
          // Друга половина екрана
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
                    SizedBox(height: 10,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Forgot password?",
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
                        func: (){

                    },
                        color: Color.fromRGBO(124, 117, 52, 1.0)
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children:  [
                        Expanded(
                            child: Divider(
                              thickness: 0.5,
                              color: Colors.grey,)
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text("or",
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[700],
                            ),
                          ),
                        ),
                        Expanded(
                            child: Divider(
                              thickness: 0.5,
                              color: Colors.grey,
                        ))
                      ],
                    ),
                    const SizedBox(height: 10,),
                    MyElevatedButtonRedirect(
                        color: const Color.fromRGBO(124, 117, 52, 1.0),
                        buttonText: "Continue with Google",
                        func: (){}
                    ),
                    SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                            text: TextSpan(
                              text: "Don'have an account?, ",
                              style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, .5),
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                                children:[
                                  TextSpan(text: "Sign up",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
                                      }
                                  )
                                ],
                            )
                        ),
                      ],
                    ),

                  ],
                )
            ),
          ),
        ],
      ),
    );
  }
}
