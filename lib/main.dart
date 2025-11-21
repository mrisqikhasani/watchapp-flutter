import 'package:flutter/material.dart';
import 'package:watchapp/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Watch App',
      theme: ThemeData(fontFamily: 'Poppins'),
      home: HomePage(),
    );
  }
}
