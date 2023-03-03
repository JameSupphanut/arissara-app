// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/utils/const.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appName,
      theme: Constants.lightTheme,
      darkTheme: Constants.darkTheme,
      home: MainScreen()
          
          
          
      );
    
  }  
}

