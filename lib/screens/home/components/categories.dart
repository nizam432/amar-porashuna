// import 'package:flutter/material.dart';
// import 'package:plant_watch/constants.dart';
//
// import '../../../controllers/category_controller.dart';
// import '../../../models/category_model.dart';
//
// class Categories extends StatefulWidget {
//   const Categories({Key? key}) : super(key: key);
//
//   @override
//   State<Categories> createState() => _CategoriesState();
// }
//
// class _CategoriesState extends State<Categories> {
//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<List<Category>>(
//       stream: CategoryController.allCategory(),
//       builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           return SizedBox(
//             height: 110,
//             child: ListView(
//               scrollDirection: Axis.horizontal,
//               children: snapshot.data!.map(buildCategory). (),
//             ),
//           );
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
//   Widget buildCategory(Category category) {
//     return Padding(
//       padding: const EdgeInsets.only(
//         right: 15,
//       ),
//       child: Column(
//         children: [
//           CircleAvatar(
//             backgroundImage: AssetImage(category.imgPath),
//             radius: 35,
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           Text(
//             category.name,
//             style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
//           )
//         ],
//       ),
//     );
//   }
// }
