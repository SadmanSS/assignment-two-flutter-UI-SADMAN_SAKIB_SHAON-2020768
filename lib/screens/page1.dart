import 'package:flutter/material.dart';
import 'package:ui_app_1/widgets/balance_card.dart';
import 'package:ui_app_1/widgets/home_action_buttons.dart';
import 'package:ui_app_1/widgets/recent_transactions.dart';

class HomeWithTabs extends StatelessWidget {
  const HomeWithTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BalanceCard(),
              const SizedBox(height: 24),
              const HomeActionButtons(),
              const SizedBox(height: 30),
              const RecentTransactions(),
            ],
          ),
        ),
      ),
    );
  }
}
