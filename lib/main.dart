import 'package:flutter/material.dart';
import './screen/appbar.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
      title: "Amazon Clone UI",
      home: BottomBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}
