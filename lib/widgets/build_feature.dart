import 'package:flutter/material.dart';
import 'package:uangkoo/constants/pallete.dart';

class BuildFeature extends StatelessWidget {
  final String label;
  final String amount;
  final Color iconColor;
  final IconData icon;

  const BuildFeature({
    super.key,
    required this.label,
    required this.amount,
    required this.iconColor,
    required this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          child: Icon(
            icon,
            color: iconColor,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Palette.greyColorBg,
          ),
        ),
        SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: TextStyle(
                color: Palette.whiteColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              amount,
              style: TextStyle(
                color: Palette.whiteColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
