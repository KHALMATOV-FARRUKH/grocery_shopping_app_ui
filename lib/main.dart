import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocery_shopping_app_ui/pages/cart_page.dart';
import 'package:grocery_shopping_app_ui/pages/home_page.dart';
import 'package:grocery_shopping_app_ui/pages/item_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF7F5F8),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HomePage(),
        "ItemPage": (context) => ItemPage(),
        "CartPage": (context) => CartPage(),
      },
    );
  }
}
