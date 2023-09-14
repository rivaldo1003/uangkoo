import 'package:flutter/material.dart';
import 'package:uangkoo/constants/pallete.dart';
import 'package:uangkoo/widgets/card_category.dart';

class CategoryPage extends StatefulWidget {
  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  bool isExpense = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Switch(
                      activeColor: Palette.redColor,
                      activeTrackColor: Colors.red[200],
                      inactiveThumbColor: Palette.primaryColor,
                      inactiveTrackColor: Colors.green[200],
                      value: isExpense,
                      onChanged: (value) {
                        setState(() {
                          isExpense = value;
                        });
                      },
                    ),
                    Text(
                      (isExpense == true) ? 'Expense' : 'Income',
                      style: TextStyle(
                        color: Palette.textColorBlack,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    color: Palette.blackColor,
                  ),
                ),
              ],
            ),
            BuildCardCategory(),
          ],
        ),
      ),
    );
  }
}
