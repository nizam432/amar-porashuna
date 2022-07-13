import 'package:flutter/material.dart';
import 'carousel.dart';
import 'subject.dart';
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            const Carousel(),
            const SizedBox(
              height: 15,
            ),
            const SizedBox(
              height: 15,
            ),
            const SubjectCategory(),
            const SizedBox(
              height: 15,
            ),

          ],
        ),
      ),
    );
  }
}
