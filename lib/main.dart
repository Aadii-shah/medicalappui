import 'package:flutter/material.dart';
import 'package:medicalappui/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}

