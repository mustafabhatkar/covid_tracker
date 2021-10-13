// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'home/home_page.dart';

class BasePage extends StatefulWidget {
  const BasePage({Key? key}) : super(key: key);

  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  var selectedTab = 0;
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: <Widget>[
            HomePage(),
            Container(
                child: const Center(child: Text("Page 2")),
                color: Theme.of(context).backgroundColor),
            Container(
                child: const Center(child: Text("Page 3")),
                color: Theme.of(context).backgroundColor)
          ]),
      backgroundColor: Theme.of(context).backgroundColor,
      bottomNavigationBar: SnakeNavigationBar.color(
        behaviour: SnakeBarBehaviour.pinned,
        snakeShape: SnakeShape.indicator,
        snakeViewColor: Colors.white,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        // snakeViewColor: Colors.red.withOpacity(1),
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        currentIndex: selectedTab,
        onTap: (index) {
          setState(() => selectedTab = index);
          pageController.jumpToPage(selectedTab);
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.syringe), label: 'Vaccination'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.infoCircle), label: 'About'),
        ],
      ),
    );
  }
}
