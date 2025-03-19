import 'dart:ui';
import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String subjectName;
  final String courseCode;
  final String facultyName;

  const CourseCard({
    super.key,
    required this.subjectName,
    required this.courseCode,
    required this.facultyName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Container(
          width: double.infinity,
          height: 150,
          padding: const EdgeInsets.all(12),
          child: Stack(
            children: [
              Positioned(
                top: 8,
                right: 12,
                child: Text(
                  facultyName,
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                bottom: 30,
                left: 12,
                child: Text(
                  subjectName,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 12,
                child: Text(
                  courseCode,
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
              Positioned(
                bottom: 10,
                right: 12,
                child: IconButton(
                  icon: const Icon(Icons.create_new_folder_outlined, color: Colors.blue),
                  onPressed: () {
                    // Upload action
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}