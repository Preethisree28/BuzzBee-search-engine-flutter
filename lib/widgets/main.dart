import 'package:buzz_bee/responsive/mobile_screen_layout.dart';
import 'package:buzz_bee/responsive/responsive_layout_screen.dart';
import 'package:buzz_bee/responsive/web_screen_layout.dart';
import 'package:buzz_bee/screens/search_screen.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BuzzBee',
      theme:ThemeData.dark().copyWith(
        scaffoldBackgroundColor:backgroundColor,
      ),
        home: const ResponsiveLayoutScreen(
          mobileScreenLayout:MobileScreenLayout() ,
          webScreenLayout:WebScreenLayout(),
      ),
    );
  }
}

