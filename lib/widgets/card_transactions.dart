import 'package:flutter/material.dart';
import 'package:uangkoo/constants/pallete.dart';

class BuildCardTransactions extends StatelessWidget {
  final double width;
  final String title;
  final String subtitle;
  final IconData icon;
  final Color iconColor;

  const BuildCardTransactions({
    super.key,
    required this.width,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      child: Card(
        elevation: 10,
        color: Palette.whiteColor,
        child: ListTile(
          leading: Icon(
            icon,
            color: iconColor,
          ),
          title: Text(
            title,
            style: TextStyle(
              color: Palette.blackColor,
            ),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(
              color: Colors.grey[400],
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.delete,
                color: Palette.greyColor,
              ),
              SizedBox(width: 12),
              Icon(
                Icons.edit,
                color: Palette.greyColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
