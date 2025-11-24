import 'package:flutter/material.dart';
import 'package:ui_app_1/widgets/spending_summary_card.dart';
import 'package:ui_app_1/widgets/spending_breakdown_item.dart';

class ReportsPage extends StatelessWidget {
  const ReportsPage({super.key});

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
              'Monthly Spending Report',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1A1F36),
              ),
            ),
            const SizedBox(height: 20),
            const SpendingSummaryCard(),
            const SizedBox(height: 30),
            const Text(
              'Spending Breakdown',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1A1F36),
              ),
            ),
            const SizedBox(height: 20),
            const SpendingBreakdownItem(
              label: 'Food & Drink',
              amount: 450.00,
              percentage: 35,
              color: Colors.red,
            ),
            const SpendingBreakdownItem(
              label: 'Shopping',
              amount: 320.00,
              percentage: 25,
              color: Color(0xFF5F4AE3),
            ),
            const SpendingBreakdownItem(
              label: 'Housing',
              amount: 280.00,
              percentage: 22,
              color: Colors.amber,
            ),
            const SpendingBreakdownItem(
              label: 'Transport',
              amount: 150.00,
              percentage: 12,
              color: Colors.green,
            ),
            const SpendingBreakdownItem(
              label: 'Other',
              amount: 70.00,
              percentage: 6,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
