import 'package:flutter/material.dart';
import 'package:uangkoo/constants/pallete.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Category page',
          style: TextStyle(
            color: Palette.blackColor,
          ),
        ),
      ),
    );
  }
}
