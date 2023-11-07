import 'package:flutter/material.dart';
import 'package:movie_app/colors.dart';
import 'package:movie_app/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Movie',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colours.scaffoldBgColors,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
