// import 'package:flutter/material.dart';
// import 'package:plant_watch/constants.dart';
//
// import '../../../controllers/tips_controller.dart';
// import '../../../models/tips_model.dart';
//
// class Tips extends StatefulWidget {
//   const Tips({Key? key}) : super(key: key);
//
//   @override
//   State<Tips> createState() => _TipsState();
// }
//
// class _TipsState extends State<Tips> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(vertical: 8),
//       decoration: BoxDecoration(
//         color: kPrimaryColor.withOpacity(.6),
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: StreamBuilder<List<Tip>>(
//           stream: TipsController.allTips(),
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               return Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   const Icon(
//                     Icons.info,
//                     color: Colors.white,
//                   ),
//                   SizedBox(
//                     width: 230,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           snapshot.data![0].title,
//                           style: const TextStyle(
//                               color: Colors.white,
//                               fontSize: 18,
//                               fontWeight: FontWeight.w500),
//                         ),
//                         const SizedBox(
//                           height: 3,
//                         ),
//                         Text(
//                           snapshot.data![0].description,
//                           style: const TextStyle(color: Colors.white),
//                         ),
//                       ],
//                     ),
//                   ),
//                   ClipRRect(
//                     borderRadius: BorderRadius.circular(15),
//                     child: Image.asset(
//                       snapshot.data![0].imgPath,
//                       height: 60,
//                     ),
//                   ),
//                 ],
//               );
//               // return ListTile(
//               //   leading: const Icon(
//               //     Icons.info,
//               //     color: Colors.white,
//               //   ),
//               //   title: Text(
//               //     snapshot.data![0].title,
//               //     style: const TextStyle(color: Colors.white),
//               //   ),
//               //   subtitle: Text(
//               //     snapshot.data![0].description,
//               //     style: const TextStyle(color: Colors.white),
//               //   ),
//               //   trailing: Image.asset(
//               //     snapshot.data![0].imgPath,
//               //   ),
//               // );
//             } else if (snapshot.hasError) {
//               return Text('${snapshot.error}');
//             } else {
//               return const Center(
//                 child: CircularProgressIndicator(
//                   color: kPrimaryColor,
//                 ),
//               );
//             }
//           }),
//     );
//   }
// }
