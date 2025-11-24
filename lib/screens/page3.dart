import 'package:flutter/material.dart';
import 'package:ui_app_1/widgets/credit_card.dart';
import 'package:ui_app_1/widgets/card_action_row.dart';
import 'package:ui_app_1/widgets/linked_account_item.dart';

class CardsPage extends StatelessWidget {
  const CardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'My Cards',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1A1F36),
              ),
            ),
            const SizedBox(height: 20),
            const CreditCard(),
            const SizedBox(height: 24),
            const CardActionRow(),
            const SizedBox(height: 30),
            const Text(
              'Linked Accounts',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1A1F36),
              ),
            ),
            const SizedBox(height: 16),
            const LinkedAccountItem(),
          ],
        ),
      ),
    );
  }
}
