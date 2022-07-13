import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Carousel extends StatelessWidget {
  const Carousel({Key? key}) : super(key: key);
  final List<String> imgPaths = const [
    'assets/images/slider1.jpg',
    'assets/images/slider2.PNG',
    'assets/images/slider3.jpg',
    'assets/images/slider4.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: imgPaths.length,
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 3.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(imgPaths[itemIndex]), fit: BoxFit.fill),
                color: kTextColor.withOpacity(.7),
                //borderRadius: BorderRadius.circular(20),
              ),
            ),
        options: CarouselOptions(height: 180, aspectRatio: 15 / 9)
    );
  }
}
