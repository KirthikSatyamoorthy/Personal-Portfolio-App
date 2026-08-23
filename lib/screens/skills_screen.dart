import 'package:flutter/material.dart';

class SkillsScreen extends StatelessWidget {
  final List<String> technicalSkills = [
    "Flutter",
    "Dart",
    "Java",
    "Python",
    "HTML",
    "CSS",
  ];

  final List<String> softSkills = [
    "Problem Solving",
    "Communication",
    "Teamwork",
    "Leadership",
    "Time Management",
  ];

  final List<String> tools = [
    "Git",
    "GitHub",
    "VS Code",
    "Android Studio",
    "Firebase",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF0F172A), Color(0xFF1E3A8A)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: ListView(
        padding: EdgeInsets.all(20),
        children: [
          buildSection("Technical Skills", technicalSkills),
          SizedBox(height: 20),
          buildSection("Soft Skills", softSkills),
          SizedBox(height: 20),
          buildSection("Tools & Technologies", tools),
        ],
      ),
    );
  }

  Widget buildSection(String title, List<String> items) {
    return Card(
      color: Colors.white.withOpacity(0.1),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: items
                  .map(
                    (item) => Chip(
                      label: Text(item),
                      backgroundColor: Colors.white,
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}