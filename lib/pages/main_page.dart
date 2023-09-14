import 'package:calendar_appbar/calendar_appbar.dart';
import 'package:flutter/material.dart';
import 'package:uangkoo/constants/pallete.dart';
import 'package:uangkoo/pages/categories_page.dart';
import 'package:uangkoo/pages/home_page.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selected = 0;
  void onTap(int index) {
    setState(() {
      selected = index;
    });
  }

  List<Widget> children = [
    HomePage(),
    CategoryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (selected == 0)
          ? CalendarAppBar(
              accent: Palette.primaryColor,
              backButton: false,
              onDateChanged: (value) {
                print(value);
              },
              lastDate: DateTime.now(),
              firstDate: DateTime.now().subtract(Duration(days: 140)),
              locale: 'id',
            )
          : PreferredSize(
              preferredSize: Size.fromHeight(100),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 16,
                  ),
                  child: Text(
                    'Categories',
                    style: TextStyle(
                      color: Palette.blackColor,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
      floatingActionButton: Visibility(
        visible: (selected == 0) ? true : false,
        child: FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Palette.whiteColor,
          ),
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: children.elementAt(selected),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Palette.whiteColor,
        currentIndex: selected,
        onTap: onTap,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Palette.primaryColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
            ),
            label: 'Category',
          ),
        ],
      ),
    );
  }
}
