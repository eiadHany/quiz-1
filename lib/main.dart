import 'package:exam1/screen1/home1.dart';
import 'package:exam1/screen2/home2.dart';
import 'package:exam1/screen3/home3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home3(),
    );
  }
}
