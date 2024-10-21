import 'package:flutter/material.dart';
import 'package:gc_user/ui/screens/auth_login_screen.dart';
import 'package:gc_user/ui/screens/main_img_first_screen.dart';
import 'package:gc_user/ui/screens/main_img_second_screen.dart';
import 'package:gc_user/ui/screens/main_img_third_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GC User App',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: AuthLoginScreen());
  }
}
