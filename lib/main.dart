import 'package:flutter/material.dart';
import 'package:sneaker_shop/pages/homepage.dart';
import 'package:sneaker_shop/pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: IntroPage(),
      routes: {'/homepage': (context) => Homepage()},
    );
  }
}
