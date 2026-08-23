import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  Widget contactCard(IconData icon, String title, String value) {
    return Card(
      color: Colors.white.withOpacity(0.1),
      child: ListTile(
        leading: Icon(icon, color: Colors.white),
        title: Text(title, style: TextStyle(color: Colors.white)),
        subtitle: Text(value, style: TextStyle(color: Colors.white70)),
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
          contactCard(Icons.email, "Email", "kirthik@example.com"),
          contactCard(Icons.phone, "Phone", "+91 9876543210"),
          contactCard(Icons.link, "LinkedIn", "linkedin.com/in/kirthik"),
          contactCard(Icons.code, "GitHub", "github.com/KirthikSatyamoorthy"),
        ],
      ),
    );
  }
}