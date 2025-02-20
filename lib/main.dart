import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:testingproj/firebase_options.dart';
import 'package:testingproj/ui/pages/init_page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const InitializePage(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.white,
        useMaterial3: true,
      ),
    );
  }
}
