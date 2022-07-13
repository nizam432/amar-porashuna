// import 'package:flutter/material.dart';
// import 'package:palette_generator/palette_generator.dart';
//
// import '../../../constants.dart';
// import '../../../controllers/category_controller.dart';
// import '../../../models/category_model.dart';
//
// class Body extends StatelessWidget {
//   const Body({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<List<Category>>(
//       stream: CategoryController.allCategory(),
//       builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           return GridView(
//               padding: const EdgeInsets.only(
//                   top: 40, right: 10, left: 10, bottom: 10),
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 crossAxisSpacing: 15,
//                 mainAxisSpacing: 15,
//                 mainAxisExtent: 100,
//               ),
//               children: snapshot.data!.map(categoryBuild).toList());
//         } else if (snapshot.hasError) {
//           return Text('${snapshot.error}');
//         } else {
//           return const Center(
//             child: CircularProgressIndicator(
//               color: kPrimaryColor,
//             ),
//           );
//         }
//       },
//     );
//   }
//
//   Widget categoryBuild(Category category) {
//     return FutureBuilder(
//       future: getBgColor(category.imgPath),
//       builder: (BuildContext context, AsyncSnapshot<Color> snapshot) {
//         if (snapshot.hasData) {
//           return Card(
//             shape:
//                 RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//             elevation: 10,
//             child: Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 color: snapshot.data,
//               ),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(top: 8.0, left: 8),
//                     child: Text(
//                       category.name,
//                       style: const TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 16),
//                     ),
//                   ),
//                   ClipRRect(
//                     borderRadius: const BorderRadius.only(
//                         topRight: Radius.circular(10),
//                         bottomRight: Radius.circular(10)),
//                     child: Image.asset(
//                       category.imgPath,
//                       height: 100,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           );
//         } else if (snapshot.hasError) {
//           return Text('${snapshot.error}');
//         } else {
//           return const CircularProgressIndicator(
//             color: kPrimaryColor,
//           );
//         }
//       },
//     );
//   }
//
//   Future<Color> getBgColor(String imgPath) async {
//     PaletteGenerator paletteGenerator =
//         await PaletteGenerator.fromImageProvider(AssetImage(imgPath));
//     return paletteGenerator.mutedColor == null
//         ? paletteGenerator.dominantColor!.color.withOpacity(.8)
//         : paletteGenerator.mutedColor!.color.withOpacity(.8);
//   }
// }
