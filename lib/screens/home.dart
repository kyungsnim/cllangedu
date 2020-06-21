import 'package:cllangedu/constants/custom_color.dart';
import 'package:cllangedu/constants/custom_style.dart';
import 'package:cllangedu/widgets/appbar.dart';
import 'package:flutter/material.dart';

import 'introduce_cllangedu.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Introduce(),
    Text(
      'Index 1: Courses',
      style: CustomStyle.optionStyle,
    ),
    Text(
      'Index 2: Quizes',
      style: CustomStyle.optionStyle,
    ),
    Text(
      'Index 3: My Info',
      style: CustomStyle.optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: appBar(context),
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: Container(),
          centerTitle: false,
        ),
        body: Center(
            child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: CustomColor.bottomNaviBar,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('home'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_books),
                title: Text('Courses')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.question_answer),
                title: Text('Quizes')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.perm_identity),
                title: Text('My Info')
            )],
          currentIndex: _selectedIndex,
          selectedItemColor: CustomColor.selectedItemColor,
          unselectedItemColor: CustomColor.unselectedItemColor,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}