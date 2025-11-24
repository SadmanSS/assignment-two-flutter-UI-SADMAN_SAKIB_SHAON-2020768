import 'package:flutter/material.dart';
import 'package:ui_app_1/widgets/card_action_button.dart';

class CardActionRow extends StatelessWidget {
  const CardActionRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        CardActionButton(icon: Icons.close, label: 'Block'),
        CardActionButton(icon: Icons.list_alt, label: 'Details'),
        CardActionButton(icon: Icons.info_outline, label: 'Limit'),
      ],
    );
  }
}
