import 'package:flutter/material.dart';
import 'package:flutter_tutoriial/pages/HomePage.dart';
import 'package:flutter_tutoriial/pages/ItemPage.dart';
import 'package:flutter_tutoriial/pages/cartPage.dart';
import 'package:flutter_tutoriial/pages/chatPage.dart';
import 'package:flutter_tutoriial/pages/messageListPage.dart';

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
        'messageListPage': (context) => MessageListPage(),
        'chatPage': (context) => ChatPage(),
      },
    );
  }
}
