import 'package:flutter/material.dart';
import 'package:quick_serve_rider/config/constants.dart';
import 'package:quick_serve_rider/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QuickServe Rider',
      theme: ThemeData(
        backgroundColor: Colors.white,
        fontFamily: 'Roboto',
        primaryColor: primaryColor,
        highlightColor: primaryColor,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: primaryColor),
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
