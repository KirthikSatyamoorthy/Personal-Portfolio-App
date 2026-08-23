import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  final List<Map<String, String>> projects = [
    {
      "title": "HomeAid",
      "desc": "Healthcare assistance application.",
      "tech": "Flutter, Firebase",
    },
    {
      "title": "Referral Rescue",
      "desc": "Patient referral management system.",
      "tech": "Flutter, AI",
    },
    {
      "title": "Expense Tracker",
      "desc": "Personal expense tracking application.",
      "tech": "Flutter, Dart",
    },
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
      child: ListView.builder(
        padding: EdgeInsets.all(20),
        itemCount: projects.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.white.withOpacity(0.1),
            child: ListTile(
              leading: Icon(Icons.folder, color: Colors.white),
              title: Text(
                projects[index]["title"]!,
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                "${projects[index]["desc"]}\nTech: ${projects[index]["tech"]}",
                style: TextStyle(color: Colors.white70),
              ),
            ),
          );
        },
      ),
    );
  }
}