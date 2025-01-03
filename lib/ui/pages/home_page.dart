// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:testingproj/ui/pages/all_categories_screen.dart';
import 'package:testingproj/ui/pages/welcome_screen.dart';

class AvatarNicknameWidget extends StatelessWidget {
  const AvatarNicknameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("assets/images/avatarImage.jpg"),
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
    );
  }
}

class SearchTextFieldWidget extends StatelessWidget {
  SearchTextFieldWidget({super.key});

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
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
    );
  }
}

class CatgoriesScrollWidget extends StatelessWidget {
  CatgoriesScrollWidget({super.key});

  List<Map<String, String>> categories = [
    {'image': 'assets/images/avatarImage.jpg', 'title': 'Slippers'},
    {'image': 'assets/images/loginBanner.png', 'title': 'Rugs'},
    {'image': 'assets/images/signupBanner.png', 'title': 'Robes'},
    {'image': 'assets/images/avatarImage.jpg', 'title': 'Personal trainers'},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    categories[index]['image']!,
                    width: 84,
                    height: 84,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
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
    );
  }
}

class ReviewsWidget extends StatefulWidget {
  ReviewsWidget({super.key});

  @override
  State<ReviewsWidget> createState() => _ReviewsWidgetState();
}

class _ReviewsWidgetState extends State<ReviewsWidget> {
  List<Review> reviews = [
    Review(
      title: "Purple robe with a bear",
      author: "Olena",
      text:
          "Great rug with a soft texture and beautiful design! It fits perfectly in my room and adds a cozy touch. Otherwise, I'm very satisfied.",
      starsCount: 4.5,
      reviewsCount: 128,
    ),
    Review(
      title: "Comfortable leather chair",
      author: "Serhiy",
      text:
          "The chair is very comfortable and stylish. Perfect for long hours of sitting, and the leather is of great quality. Would definitely recommend.",
      starsCount: 2.5,
      reviewsCount: 320,
    ),
    Review(
      title: "Stylish wooden table",
      author: "Daria",
      text:
          "This table looks amazing in my living room! The craftsmanship is great, and it's very sturdy. The only downside is that it's a bit heavy to move around.",
      starsCount: 3,
      reviewsCount: 65,
    ),
    Review(
      title: "Cozy fleece blanket",
      author: "Viktor",
      text:
          "I absolutely love this blanket! It's incredibly soft and warm, perfect for chilly nights. The colors are vibrant and it’s easy to wash.",
      starsCount: 5,
      reviewsCount: 204,
    ),
    Review(
      title: "Compact coffee maker",
      author: "Natalia",
      text:
          "This coffee maker is perfect for small kitchens. It brews coffee quickly and the taste is great. It's also very easy to clean, which I love.",
      starsCount: 4,
      reviewsCount: 58,
    ),
    Review(
      title: "Modern wall clock",
      author: "Andriy",
      text:
          "A very stylish and functional clock. The design is minimalist and it fits well with my decor. It keeps time accurately and the sound isn't too loud.",
      starsCount: 3,
      reviewsCount: 142,
    ),
    Review(
      title: "Eco-friendly bamboo toothbrush",
      author: "Maria",
      text:
          "Great product! The bamboo handle is smooth, and the bristles are gentle on my gums. I feel good about using something that's eco-friendly.",
      starsCount: 5,
      reviewsCount: 225,
    ),
    Review(
      title: "Lightweight travel backpack",
      author: "Ihor",
      text:
          "This backpack is perfect for my travels. It's lightweight, spacious, and very comfortable to wear. The material is durable and resistant to rain.",
      starsCount: 4.5,
      reviewsCount: 312,
    ),
    Review(
      title: "Scented candles set",
      author: "Yulia",
      text:
          "The set of candles smells wonderful and creates a relaxing atmosphere. The scents are not overpowering, which is just how I like it.",
      starsCount: 4,
      reviewsCount: 75,
    ),
    Review(
      title: "Water-resistant phone case",
      author: "Denys",
      text:
          "I’ve been using this phone case for a few weeks now, and it’s great! It’s totally water-resistant, and it gives my phone excellent protection.",
      starsCount: 5,
      reviewsCount: 198,
    ),
  ];

  late List<Review> reviewsList;

  @override
  void initState() {
    super.initState();

    reviewsList = reviews.map((review) {
      return review;
    }).toList(growable: false);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: reviewsList.length,
        itemBuilder: (context, index) {
          var review = reviewsList[index];

          return SizedBox(
            width: 285,
            child: Card(
              color: const Color.fromRGBO(82, 82, 82, 1),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          fit: FlexFit.loose,
                          child: Text(
                            review.title,
                            style: const TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontFamily: 'Inter',
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          review.author,
                          style: const TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(204, 204, 204, 1),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            review.text,
                            style: const TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(children: [
                      Row(
                        children: List.generate(5, (index) {
                          if (index < review.starsCount.floor()) {
                            return const Icon(
                              Icons.star,
                              color: Color.fromRGBO(255, 199, 0, 1),
                              size: 20,
                            );
                          } else if (index == review.starsCount.floor() &&
                              review.starsCount % 1 != 0) {
                            return const Icon(
                              Icons.star_half,
                              color: Color.fromRGBO(255, 199, 0, 1),
                              size: 20,
                            );
                          }
                          return const Icon(
                            Icons.star,
                            color: Colors.grey,
                            size: 20,
                          );
                        }),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            '(${review.reviewsCount})',
                            style: const TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          SizedBox(
                            height: 24,
                            child: FilledButton(
                                style: const ButtonStyle(
                                  backgroundColor:
                                      WidgetStatePropertyAll<Color>(
                                          Colors.white),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  "More",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                )),
                          )
                        ],
                      ),
                    ]),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ProductsWidget extends StatelessWidget {
  ProductsWidget({super.key});

  List<Product> products = [
  Product(
    name: "Purple Robe with a Bear",
    company: "SoftGoods Co.",
    shortDescription: "A cozy purple robe featuring a cute bear design.",
    fullDescription: "This soft and comfortable purple robe is designed with a charming bear pattern. It's perfect for lounging around the house, and its plush fabric makes it incredibly warm and cozy. The robe comes in various sizes to fit any body type.",
    inStock: true,
    countInStock: 150,
    price: 49.99,
  ),
  Product(
    name: "Comfortable Leather Chair",
    company: "FurniturePlus",
    shortDescription: "A sleek and ergonomic leather chair for office or home use.",
    fullDescription: "This comfortable leather chair is built for long hours of use. With its ergonomic design and soft leather, it provides both comfort and style. Ideal for an office or study space, it features adjustable height and armrests.",
    inStock: true,
    countInStock: 75,
    price: 299.99,
  ),
  Product(
    name: "Stylish Wooden Coffee Table",
    company: "WoodCraft Designs",
    shortDescription: "A modern, stylish wooden coffee table perfect for any living room.",
    fullDescription: "This handcrafted wooden coffee table is both stylish and durable. Made from high-quality oak, its smooth finish and minimalist design make it a perfect addition to any living room. It's designed for easy maintenance and long-lasting use.",
    inStock: true,
    countInStock: 30,
    price: 199.99,
  ),
  Product(
    name: "Cozy Fleece Blanket",
    company: "SnuggleUp",
    shortDescription: "An ultra-soft fleece blanket to keep you warm during cold nights.",
    fullDescription: "This fleece blanket is soft, warm, and perfect for chilly nights. It comes in a variety of colors, and its lightweight material makes it easy to carry around. Ideal for use at home or while traveling, this blanket is sure to keep you cozy.",
    inStock: false,
    countInStock: 0,
    price: 29.99,
  ),
  Product(
    name: "Compact Coffee Maker",
    company: "BrewMaster",
    shortDescription: "A compact and efficient coffee maker for quick, delicious coffee.",
    fullDescription: "Brew your perfect cup of coffee every morning with this compact coffee maker. Its sleek design allows it to fit into small spaces, while the powerful brewing system ensures a strong, flavorful cup of coffee every time.",
    inStock: true,
    countInStock: 120,
    price: 79.99,
  ),
  Product(
    name: "Modern Wall Clock",
    company: "TimeCraft",
    shortDescription: "A minimalist, modern wall clock with a quiet movement.",
    fullDescription: "This modern wall clock features a clean, minimalist design. The silent movement ensures that there’s no ticking sound, making it ideal for any living or working space. Its simple elegance adds to the beauty of your home decor.",
    inStock: true,
    countInStock: 50,
    price: 49.99,
  ),
  Product(
    name: "Eco-Friendly Bamboo Toothbrush",
    company: "GreenBrush",
    shortDescription: "A sustainable bamboo toothbrush for eco-conscious individuals.",
    fullDescription: "This eco-friendly bamboo toothbrush is made with natural bamboo and soft bristles that are gentle on your gums. It's an environmentally friendly alternative to plastic toothbrushes and comes in biodegradable packaging.",
    inStock: true,
    countInStock: 200,
    price: 7.99,
  ),
  Product(
    name: "Lightweight Travel Backpack",
    company: "NomadGear",
    shortDescription: "A lightweight and durable backpack designed for travelers.",
    fullDescription: "This travel backpack is lightweight yet durable, designed to withstand the rigors of travel. It features multiple compartments, including a laptop sleeve and a water-resistant exterior. Perfect for both short trips and extended travel.",
    inStock: true,
    countInStock: 80,
    price: 89.99,
  ),
  Product(
    name: "Scented Candle Set",
    company: "AromaHome",
    shortDescription: "A set of 3 beautifully scented candles for a relaxing atmosphere.",
    fullDescription: "This scented candle set includes three calming fragrances: lavender, vanilla, and jasmine. Each candle is made from natural soy wax and is designed to burn cleanly, providing a relaxing and aromatic experience. Great for gifting or enhancing your home ambiance.",
    inStock: true,
    countInStock: 50,
    price: 29.99,
  ),
  Product(
    name: "Water-Resistant Phone Case",
    company: "SafeGuard",
    shortDescription: "A durable and water-resistant phone case for your smartphone.",
    fullDescription: "Protect your smartphone with this high-quality, water-resistant phone case. It provides full protection against water, dust, and shocks, ensuring that your device stays safe in all conditions. Available in multiple colors to suit your style.",
    inStock: true,
    countInStock: 100,
    price: 19.99,
  ),
];


  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 20, right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AvatarNicknameWidget(),
                    const SizedBox(
                      height: 20,
                    ),
                    SearchTextFieldWidget(),
                    const SizedBox(
                      height: 20,
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
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const AllCategories()));
                            },
                            child: const Text("More",
                                style: TextStyle(
                                  color: Color.fromRGBO(91, 91, 91, 1),
                                  backgroundColor: Colors.transparent,
                                ))),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CatgoriesScrollWidget(),
                    const SizedBox(
                      height: 15,
                    ),
                    const Row(
                      children: [
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
                    const SizedBox(
                      height: 15,
                    ),
                    ReviewsWidget(),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      children: [
                        Text(
                          "List of products",
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    ProductsWidget(),
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
