import 'package:edusync/presentation/widgets/course_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> courses = [
    {"subject": "Data Structures", "code": "CSE101", "faculty": "Dr. Smith"},
    {"subject": "Algorithms", "code": "CSE102", "faculty": "Dr. Jane"},
    {"subject": "Database Systems", "code": "CSE201", "faculty": "Dr. Brown"},
    {"subject": "Operating Systems", "code": "CSE301", "faculty": "Dr. Wilson"},
    {"subject": "Data Structures", "code": "CSE101", "faculty": "Dr. Smith"},
    {"subject": "Algorithms", "code": "CSE102", "faculty": "Dr. Jane"},
    {"subject": "Database Systems", "code": "CSE201", "faculty": "Dr. Brown"},
    {"subject": "Operating Systems", "code": "CSE301", "faculty": "Dr. Wilson"},
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Courses"),
        actions: [
          IconButton(
            icon: const Icon(Icons.wifi_off),
            onPressed: () {
              // Handle offline action
            },
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Handle notification action
            },
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg1.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: courses.length,
          itemBuilder: (context, index) {
            return CourseCard(
              subjectName: courses[index]["subject"]!,
              courseCode: courses[index]["code"]!,
              facultyName: courses[index]["faculty"]!,
            );
          },
        ),
      ),
    );
  }
}