import 'package:flutter/material.dart';
import 'package:smart_castle_hw2/feature/auth/pages/join_us_page.dart';
import 'package:smart_castle_hw2/feature/auth/pages/main_page.dart';
import 'package:smart_castle_hw2/feature/auth/pages/sign_in_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      routes: {
        'joinUs': (context) => JoinUsPage(),
        'signIn': (context) => SignInPage(),
      },
    );
  }
}
