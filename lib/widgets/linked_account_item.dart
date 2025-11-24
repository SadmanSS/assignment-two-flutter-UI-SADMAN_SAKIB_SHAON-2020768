import 'package:flutter/material.dart';

class LinkedAccountItem extends StatelessWidget {
  const LinkedAccountItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: Color(0xFFE0E7FF),
            child: Text(
              'S',
              style: TextStyle(
                color: Color(0xFF4A37BE),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Shared Savings',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(r'$5,500.00', style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          const Icon(Icons.arrow_forward, color: Colors.grey),
        ],
      ),
    );
  }
}
