import 'package:flutter/material.dart';

void main() {
  runApp(const LernivoApp());
}

class LernivoApp extends StatelessWidget {
  const LernivoApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lernivo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      home: Scaffold(),
    );
  }
}

class CreateNewItemIntent extends Intent {
  const CreateNewItemIntent();
}
