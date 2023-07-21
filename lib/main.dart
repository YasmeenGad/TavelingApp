import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel/screens/bottom_navigation_bar_screen.dart';
import 'package:travel/screens/post_screen.dart';
import 'package:travel/screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: Color(0xFFEDF2F6)),
        home: WelcomeScreen(),
        routes: {
          "homePage": (context) => BottomNavigationBarScreen(),
          "postScreen": (context) => PostScreen(),
        });
  }
}
