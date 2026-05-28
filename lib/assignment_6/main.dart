import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const Assignment6App());
}

class Assignment6App extends StatelessWidget {
  const Assignment6App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Assignment 6",

      theme: ThemeData(primarySwatch: Colors.blue),

      home: const HomeScreen(),
    );
  }
}
