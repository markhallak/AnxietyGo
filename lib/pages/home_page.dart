import 'package:anxiety_go/components/profile_picture.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
          actions: const <Widget>[
            ProfilePicture(imageUrl: 'https://picsum.photos/200/300')
          ]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CarouselSlider(
              items: [
                Container(
                  color: Colors.orange,
                  child: const Center(
                    child: Text(
                      'Slide 1',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepOrange,
                  child: const Center(
                    child: Text(
                      'Slide 2',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.amber,
                  child: const Center(
                    child: Text(
                      'Slide 3',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                      ),
                    ),
                  ),
                ),
              ],
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
              ),
            ),
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
