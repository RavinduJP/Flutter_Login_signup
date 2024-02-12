import 'package:flutter/material.dart';
import 'package:login_form/screens/welcomeScreen.dart';
import 'package:login_form/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login',
      theme: lightMode,
      home: const WelcomeScreen(),
    );
  }
}
