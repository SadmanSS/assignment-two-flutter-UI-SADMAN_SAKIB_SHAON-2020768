import 'package:flutter/material.dart';

class CardActionButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const CardActionButton({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 6),
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                color: Color(0xFFEEF2FF), // Light purple background
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: const Color(0xFF4A37BE), size: 24),
            ),
            const SizedBox(height: 8),
            Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Color(0xFF1A1F36),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
