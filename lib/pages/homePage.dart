import 'package:anxiety_go/components/carousalSlider.dart';
import 'package:anxiety_go/components/profilePicture.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> images = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Anxiety Go'),
          backgroundColor: Colors.red,
          actions: const <Widget>[
            ProfilePicture(imageUrl: 'https://picsum.photos/200/300')
          ]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AppCarousel(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.orange),
              ),
              child: const Text('Button'),
            ),
          ],
        ),
      ), // Before making any changes remember to
    );
  }
}
