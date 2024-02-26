import 'package:flutter/material.dart';
import 'package:practice_21/on_boarding_page.dart';
import 'package:practice_21/custome_button.dart/common_widget.dart';
import 'package:practice_21/screen/nav-bar/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: backroundClr,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const NavBarPage(),
    );
  }
}
