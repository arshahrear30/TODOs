//To do : Create Read Update Delete

import 'package:flutter/material.dart';
import 'package:shahrearapp/home_screen.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    ); // MaterialApp
  }
}
