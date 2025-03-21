import 'package:edusync/presentation/widgets/course_card.dart';
import 'package:edusync/presentation/widgets/gradient_button.dart';

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
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 20), // Add space at the beginning
              CircleAvatar(
                radius: 28, // Increased size
                backgroundImage: AssetImage('assets/images/splash_logo.png'), // Replace with dynamic URL
              ),
              SizedBox(width: 12), // Adjust space between avatar and text
              Text(
                "Hey, Rahul Arahkeri", // Replace with dynamic username
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold), // Increased font size
              ),
            ],
          ),


          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0), // Added padding
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GradientButton(text: "Ask AI", onPressed: () {}),
                GradientButton(text: "All Classes", onPressed: () {}),
                GradientIconButton(icon: Icons.upload, onPressed: () {}),
              ],
            ),
          ),

          Expanded(
            child: Container(
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
          ),
        ],
      ),
    );
  }
}