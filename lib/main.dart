import 'package:flutter/material.dart';
import 'package:kotak_cherry_demo/screens/about_page.dart';
import 'package:kotak_cherry_demo/screens/login_screen.dart';
import 'package:kotak_cherry_demo/screens/splash_screen.dart';

void main() {
  runApp(
    MyApp()
  );
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: Colors.white,
      ),
      home:SplashScreen(),
    );
  }
}
