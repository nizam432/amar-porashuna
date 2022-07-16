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

  Subject({
    required this.id,
    required this.subject_title,
    required this.picture,
  });

  static Subject fromJson(Map<String, dynamic> json) {
    return Subject(
      id: json['id'],
      subject_title: json['subject_title'],
      picture: json['picture'],
    );
  }
}

Future<List<Subject>> fetchSubject() async {
  final response = await http
      .get(Uri.parse('https://www.amarporashuna.com/api/getSubject'));

  if (response.statusCode == 200) {
    //return Subject.fromJson(jsonDecode(response.body));
    return response.body.map(Subject.fromJson).toList();
  } else {
    throw Exception('Failed to load album');
  }
}

class  _SubjectCategoryState extends State<SubjectCategory> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Subject>>(
      future: fetchSubject(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return SizedBox(
            height: 95,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: snapshot.data!.map(buildSubject).toList(),
            ),
          );
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        } else {
          return const Center(
            child: CircularProgressIndicator(
              color: kPrimaryColor,
            ),
          );
        }
      },
    );
  }
  
  Widget buildSubject(Subject subject) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SubjectDetailsScreen(id: subject.id))),
      child: Padding(
        padding: const EdgeInsets.only(
          right: 15,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Column(
            children: [
              Image.network(
                category.imgPath,
                height: 60,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                color: const Color(0xffcdcdcd),
                child: Text(
                  subject.subject_title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
