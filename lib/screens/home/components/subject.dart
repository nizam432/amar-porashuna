import 'dart:convert';

import 'package:dhaka/screens/home/components/subject_details.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
  final response =
      await http.get(Uri.parse('https://www.amarporashuna.com/api/getSubject'));
  if (response.statusCode == 200) {
    var jsonData = jsonDecode(response.body);
    List<Subject> subjects = [];
    for (var u in jsonData) {
      subjects.add(Subject.fromJson(u));
    }
    return subjects;
  } else {
    return Future.error('Failed to load album');
  }
}

class _SubjectCategoryState extends State<SubjectCategory> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Subject>>(
      future: fetchSubject(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
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
        child: Column(
          children: [
            ClipRRect(
              child: Image.network(
                'https://www.amarporashuna.com/public/upload/subject/' +
                    subject.picture,
                height: 100,
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              decoration: BoxDecoration(
                color: const Color(0xffcdcdcd),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
              ),
              child: Text(
                subject.subject_title,
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}
