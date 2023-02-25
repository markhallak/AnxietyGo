
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class AppCarousel extends StatefulWidget {
   AppCarousel({super.key, this.height, this.width,this.imageList}):
        assert(imageList==null,
  'Image list should not be null');

  final double? height;
  final double? width;
  List<String>? imageList;
  @override
  State<StatefulWidget> createState() => _AppCarousel();
}

class _AppCarousel extends State<AppCarousel> {
   List<String>? imageList = [];
  CarouselController carouselController = CarouselController();

  @override
  void initState() {
    super.initState();
    imageList = widget.imageList;
    if(imageList!.isEmpty) {
      imageList = addStaticImages();
    }
  }
  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: CarouselSlider(
        carouselController: carouselController,

        options: CarouselOptions(enlargeCenterPage: true,

            enableInfiniteScroll: false),
        items: imageList
            ?.map((e) => Container(
                  color: Colors.white12,
                  child: Center(child: Image.network(e)),
                ))
            .toList(),
      ),
    );
  }
}

// get static images if passes imageList os empty or null
List<String> addStaticImages() {
  return [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  ];
}

