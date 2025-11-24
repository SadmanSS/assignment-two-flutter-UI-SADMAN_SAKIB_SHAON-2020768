import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ui_app_1/widgets/action_button.dart';

class HomeActionButtons extends StatelessWidget {
  const HomeActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        ActionButton(
          icon: CupertinoIcons.arrow_right_arrow_left,
          label: 'Transfer',
        ),
        ActionButton(icon: CupertinoIcons.doc_text, label: 'Pay Bills'),
        ActionButton(icon: CupertinoIcons.graph_circle, label: 'Invest'),
      ],
    );
  }
}
