import 'package:flutter/material.dart';
import 'package:theming/features/presentation/constants/context_extension.dart';
import '../../presentation/constants/colors.dart';

//
// Widget reusableReactionRow( IconData icon, String text,BuildContext? context) {

// }
class ReusableReactionRow extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  final Color textColor;

  const ReusableReactionRow(
      this.icon, this.text, this.iconColor, this.textColor,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color:iconColor,
        ),
        const SizedBox(width: 6),
        Text(
          text,
          style: TextStyle(color: textColor, fontSize: 14),
        ),
      ],
    );
  }
}
