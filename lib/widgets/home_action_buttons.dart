import 'package:flutter/material.dart';
import 'package:ui_app_1/widgets/action_button.dart';

class HomeActionButtons extends StatelessWidget {
  const HomeActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        ActionButton(icon: Icons.swap_vert, label: 'Transfer'),
        ActionButton(icon: Icons.info_outline, label: 'Pay Bills'),
        ActionButton(icon: Icons.link, label: 'Invest'),
      ],
    );
  }
}
