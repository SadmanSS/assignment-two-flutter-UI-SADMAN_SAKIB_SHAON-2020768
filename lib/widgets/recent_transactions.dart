import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
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
          icon: CupertinoIcons.film,
          title: 'Netflix Subscription',
          subtitle: 'Entertainment • Today',
          amount: r'-$19.99',
          amountColor: Colors.red,
        ),
        const TransactionItem(
          icon: Icons.local_cafe,
          title: 'Coffee Shop',
          subtitle: 'Food & Drink • Today',
          amount: r'-$4.50',
          amountColor: Colors.red,
        ),
        const TransactionItem(
          icon: CupertinoIcons.money_dollar,
          title: 'Salary Deposit',
          subtitle: 'Income • Yesterday',
          amount: r'+$3500.00',
          amountColor: Colors.green,
        ),
        const TransactionItem(
          icon: CupertinoIcons.cart,
          title: 'Grocery Store',
          subtitle: 'Shopping • Yesterday',
          amount: r'-$55.80',
          amountColor: Colors.red,
        ),
        const TransactionItem(
          icon: CupertinoIcons.bag,
          title: 'Amazon Purchase',
          subtitle: 'Shopping • 2 days ago',
          amount: r'-$120.45',
          amountColor: Colors.red,
        ),
      ],
    );
  }
}
