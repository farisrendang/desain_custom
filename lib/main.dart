import 'package:appalah/pages/Hus.dart';
import 'package:flutter/material.dart';
import 'package:appalah/pages/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/tug': (context) => Tug(),

        
      },
    );
  }
}