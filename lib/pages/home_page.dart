import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anxiety Go'),
        backgroundColor: Colors.red,
      ),
      body: const Center(
        child: Text('Anxiety Go'),
      ), // Before making any changes remember to
    );
  }
}
