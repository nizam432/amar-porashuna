// import 'dart:typed_data';
//
// import 'package:flutter/material.dart';
//
// import '../../../constants.dart';
// import '../../../controllers/carousel_controller.dart';
//
// class Carousel extends StatefulWidget {
//   const Carousel({Key? key}) : super(key: key);
//
//   @override
//   State<Carousel> createState() => _CarouselState();
// }
//
// class _CarouselState extends State<Carousel> {
//   List<Uint8List?> images = [];
//
//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder(
//       stream: CarouselControllerCustom.allCarousel(images),
//       builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           return Text('${images.length}');
//         } else if (snapshot.hasError) {
//           return const Text("Something went wrong");
//         } else {
//           return const CircularProgressIndicator(
//             color: kPrimaryColor,
//           );
//         }
//       },
//     );
//   }
//
//   Widget buildCarousel(Uint8List img) {
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       margin: const EdgeInsets.symmetric(horizontal: 3.0),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         image: DecorationImage(image: MemoryImage(img), fit: BoxFit.fill),
//         color: kTextColor.withOpacity(.7),
// //borderRadius: BorderRadius.circular(20),
//       ),
//     );
//   }
// }
