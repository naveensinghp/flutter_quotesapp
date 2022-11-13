 import 'package:flutter/material.dart';
import 'package:flutter_quotegenerator/pages/home/homepage.dart';
import 'package:flutter_quotegenerator/pages/introsplashscreen.dart';
import 'package:flutter_quotegenerator/pages/splashscreen.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner : false,
      title: 'NaveenSingh',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //  home: IntroSplashScreen(),
       home: SplashScreen()
    );
  }
}


