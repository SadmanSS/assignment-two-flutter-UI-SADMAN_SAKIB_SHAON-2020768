import 'package:flutter/material.dart';
import 'package:ui_app_1/widgets/info_card.dart';
import 'package:ui_app_1/widgets/bio_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'User Profile',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1A1F36),
              ),
            ),
            const SizedBox(height: 30),
            const CircleAvatar(
              radius: 50,
              backgroundColor: Color(0xFF4A37BE),
              backgroundImage: NetworkImage(
                "https://avatars.githubusercontent.com/u/168157771?v=4",
              ),
            ),
            const SizedBox(height: 30),
            const InfoCard(label: 'Name', value: 'Sadman Sakib Shaon'),
            const SizedBox(height: 16),
            const InfoCard(label: 'Student ID', value: '2020768'),
            const SizedBox(height: 16),
            const InfoCard(label: 'Email', value: '2020768@iub.edu.bd'),
            const SizedBox(height: 16),
            const BioCard(),
          ],
        ),
      ),
    );
  }
}
