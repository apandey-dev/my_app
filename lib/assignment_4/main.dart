import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(title: const Text("Assignment 4"), centerTitle: true),

        body: Center(
          child: Container(
            width: 200,
            height: 200,

            decoration: BoxDecoration(
              color: Colors.black,

              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ),
    );
  }
}
