import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../../constants.dart';
class SubjectCategory extends StatefulWidget {
  const SubjectCategory({Key? key}) : super(key: key);
  @override
  State<SubjectCategory> createState() => _SubjectCategoryState();
}

class Subject {
  final int id;
  final String subject_title;
  final String picture;

  const Subject({
    required this.id,
    required this.subject_title,
    required this.picture,
  });

  factory Subject.fromJson(Map<String, dynamic> json) {
    return Subject(
      id: json['id'],
      subject_title: json['subject_title'],
      picture: json['picture'],
    );
  }
}

Future<Subject> fetchSubject() async {
  final response = await http
      .get(Uri.parse('https://www.amarporashuna.com/api/getSubject'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Subject.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class  _SubjectCategoryState extends State<SubjectCategory> {
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
              margin: const EdgeInsets.symmetric(horizontal: 1.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(imgPaths[itemIndex]), fit: BoxFit.fill
                    ),
                    color: kTextColor.withOpacity(.7),
                //borderRadius: BorderRadius.circular(20),
              ),
            ),
        options: CarouselOptions(height: 180, aspectRatio: 15 / 9)
    );
  }
}
