import 'package:flutter/material.dart';
import 'package:flutter_tutoriial/pages/HomePage.dart';
import 'package:flutter_tutoriial/pages/ItemPage.dart';
import 'package:flutter_tutoriial/pages/cartPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      routes: {
        "/": (context) => Homepage(),
        "cartPage": (context) => CartPage(),
        "itemPage": (context) => ItemPage(),
      },
    );
  }
}
