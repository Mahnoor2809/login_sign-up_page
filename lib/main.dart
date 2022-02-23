import 'package:flutter/material.dart';
import 'constant.dart';
import 'screens/welcome/welcome_screen.dart';

void main() => runApp( MyApp());
//Mianpage
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // unknown purpose
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }
}

