import 'package:flutter/material.dart';
import 'package:ui_app_1/widgets/transaction_item.dart';

class RecentTransactions extends StatelessWidget {
  const RecentTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Recent Transactions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1A1F36),
              ),
            ),
            TextButton(onPressed: () {}, child: const Text('View All')),
          ],
        ),
        const SizedBox(height: 16),
        const TransactionItem(
          icon: Icons.movie_creation_outlined,
          title: 'Netflix Subscription',
          subtitle: 'Entertainment • Today',
          amount: r'-$19.99',
          amountColor: Colors.red,
        ),
        const TransactionItem(
          icon: Icons.local_cafe_outlined,
          title: 'Coffee Shop',
          subtitle: 'Food & Drink • Today',
          amount: r'-$4.50',
          amountColor: Colors.red,
        ),
        const TransactionItem(
          icon: Icons.savings_outlined,
          title: 'Salary Deposit',
          subtitle: 'Income • Yesterday',
          amount: r'+$3500.00',
          amountColor: Colors.green,
        ),
        const TransactionItem(
          icon: Icons.shopping_cart_outlined,
          title: 'Grocery Store',
          subtitle: 'Shopping • Yesterday',
          amount: r'-$55.80',
          amountColor: Colors.red,
        ),
        const TransactionItem(
          icon: Icons.shopping_bag_outlined,
          title: 'Amazon Purchase',
          subtitle: 'Shopping • 2 days ago',
          amount: r'-$120.45',
          amountColor: Colors.red,
        ),
      ],
    );
  }
}
