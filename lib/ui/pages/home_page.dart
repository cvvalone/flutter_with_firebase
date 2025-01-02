import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:testingproj/ui/pages/all_categories_screen.dart';
import 'package:testingproj/ui/pages/welcome_screen.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  void signUserOut(context) {
    FirebaseAuth.instance.signOut();
    navigateToHome(context);
  }

  void navigateToHome(context) {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const WelcomeScreen()));
  }

  List<Map<String, String>> categories = [
      {'image': 'assets/images/avatarImage.jpg', 'title': 'Slippers'},
      {'image': 'assets/images/loginBanner.png', 'title': 'Rugs'},
      {'image': 'assets/images/signupBanner.png', 'title': 'Robes'},
      {'image': 'assets/images/avatarImage.jpg', 'title': 'Personal trainers'},
    ];

    TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 24, right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/avatarImage.jpg"),
                          radius: 33,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          "User Name",
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.7),
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    TextField(
                      controller: searchController,
                      obscureText: false,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(247, 247, 247, 1),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        prefixIcon: Icon(Icons.search),
                        prefixIconColor: Color.fromRGBO(124, 124, 124, 1),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Color.fromRGBO(247, 247, 247, 1),
                        )),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Color.fromRGBO(230, 230, 230, 1),
                        )),
                        hintText: "Search",
                        contentPadding: EdgeInsets.all(15),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Looking for",
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            fontSize: 30,
                          ),
                        ),
                        TextButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const AllCategories()));
                        }, child: const Text(
                          "More", 
                          style: TextStyle(
                            color: Color.fromRGBO(91, 91, 91, 1),
                            backgroundColor: Colors.transparent,
        
                            ))),
                      ],
                    ),
                    const SizedBox(height: 16,),
                    SizedBox(
                      height: 120,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        itemBuilder: (context, index){
                          return  Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    categories[index]['image']!,
                                    width: 84,
                                    height: 84,
                                    fit: BoxFit.cover,),
                                ),
                                const SizedBox(height: 8,),
                                Text(
                                  categories[index]['title']!,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(0, 0, 0, 0.7),
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),
                            );
                        },
                        ),
                    ),
                    const SizedBox(height: 20,),
                    const Row(children: [
                      Text(
                          "Reviews",
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                    ],
                    ),
                    const SizedBox(height: 15,),
                  ],
                ),
              ),
            ],
          ),
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
                icon: const Icon(
                  Icons.home_outlined,
                ),
                onPressed: () {},
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
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.manage_accounts),
                onPressed: () {
                  signUserOut(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
