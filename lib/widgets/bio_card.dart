import 'package:flutter/material.dart';

class BioCard extends StatelessWidget {
  const BioCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.1),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Bio / Story',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1A1F36),
            ),
          ),
          SizedBox(height: 12),
          Text(
            '"I\'m an Engineering Student passionate about building web and mobile applications. I love experimenting with new technologies and improving my coding skills every day."',
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF4B5563),
              fontStyle: FontStyle.italic,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
