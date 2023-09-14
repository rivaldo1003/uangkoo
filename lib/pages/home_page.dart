import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:uangkoo/constants/pallete.dart';
import 'package:uangkoo/widgets/build_feature.dart';
import 'package:uangkoo/widgets/card_transactions.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          margin: EdgeInsets.all(20),
          height: 100,
          width: width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BuildFeature(
                label: 'Income',
                amount: 'Rp. 3.000.000',
                icon: Icons.download,
                iconColor: Palette.primaryColor,
              ),
              BuildFeature(
                label: 'Outcome',
                amount: 'Rp. 1.600.000',
                icon: Icons.upload,
                iconColor: Palette.redColor,
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Palette.blackColor,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Transactions',
                style: TextStyle(
                  color: Palette.textColorBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 16),
              BuildCardTransactions(
                width: width,
                title: 'Rp. 20.000',
                subtitle: 'Makan Siang',
                icon: Icons.upload,
                iconColor: Palette.redColor,
              ),
              BuildCardTransactions(
                width: width,
                title: 'Rp. 20.000.000',
                subtitle: 'Gaji Bulanan',
                icon: Icons.download,
                iconColor: Palette.primaryColor,
              ),
              SizedBox(height: 2),
            ],
          ),
        )
      ],
    );
  }
}
