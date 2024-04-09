import 'package:flutter/material.dart';
import 'package:flutterfirst/screens/home1.dart';
import 'package:flutterfirst/screens/splashPage.dart';
import 'package:flutterfirst/screens/splash_page_with_background.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     // home: SplashPage(),
        home: Splash_with_Images (),
      // home: HomePage1(),
       // home:RegistrationPage(),
    );
  }
}

/// main()- to run a program main function is mandatory
/// runApp()- attach widget tree to the screen (widget to pixel)
/// build - to create widget tree , must return a widget
/// BuildContext - used to locate each widget and its position in a widget tree