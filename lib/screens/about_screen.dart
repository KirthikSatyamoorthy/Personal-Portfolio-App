import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  Widget buildCard(IconData icon, String title, String subtitle) {
    return Card(
      color: Colors.white.withOpacity(0.1),
      child: ListTile(
        leading: Icon(icon, color: Colors.white),
        title: Text(title, style: TextStyle(color: Colors.white)),
        subtitle: Text(subtitle, style: TextStyle(color: Colors.white70)),
      ),
    );
  }

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
          buildCard(Icons.school, "Education", "B.E. Computer Science Engineering"),
          buildCard(
            Icons.person,
            "Background",
            "Interested in AI, Flutter, Cybersecurity and Cloud Computing.",
          ),
          buildCard(
            Icons.flag,
            "Career Objective",
            "To become a Flutter and AI developer by building real-world applications.",
          ),
          buildCard(Icons.favorite, "Hobbies", "Anime, Coding, Gaming, Fitness"),
        ],
      ),
    );
  }
}