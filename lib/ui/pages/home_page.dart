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
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const WelcomeScreen()));
  }
  
  

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD

    TextEditingController searchController = TextEditingController();

    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 24, right: 24),
              child: Column(
                children: [
                  const Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/avatarImage.jpg"),
                        radius: 33,
                      ),
                      SizedBox(width: 16,),
                      Text("User Name", style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.7),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        ),
                        ),
                    ],
                  ),
                  const SizedBox(height: 24,),
                  TextField(
                    controller: searchController,
                    obscureText: false,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(247, 247, 247, 1),
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search),
                      prefixIconColor: Color.fromRGBO(124, 124, 124, 1),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: "Search",
                      contentPadding: EdgeInsets.all(15),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        ),
      bottomNavigationBar: BottomAppBar(        
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.home_outlined,),
                  onPressed: (){
                    
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.category_outlined),
                  onPressed: (){

                  },
                ),
                IconButton(
                  
                  icon: const Icon(Icons.shopping_cart_outlined),
                  onPressed: (){
          
                  },
                ),
                IconButton(
                  
                  icon: const Icon(Icons.message_outlined),
                  onPressed: (){
          
                  },
                ),
                IconButton(
                  
                  icon: const Icon(Icons.manage_accounts),
                  onPressed: (){
                    signUserOut(context);
                  },
                ),
=======
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
>>>>>>> 85e9ec4db93057a25e8be3351bec6ae7730178f1
            ],
            ),
        ),
        ),
    );
  }
}

