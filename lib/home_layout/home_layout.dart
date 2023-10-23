import 'package:flutter/material.dart';
import 'package:quiz/pages/first_screen/first_screen.dart';
import 'package:quiz/pages/second_screen/second_screen.dart';
import 'package:quiz/pages/third_screen/third_screen.dart';

class HomeLayout extends StatefulWidget{
  static const String routeName = "splash";

  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;
  List<Widget> screen = [
    const FirstScreen(),
    const SecondScreen(),
    const ThirdScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 50,
        selectedItemColor: const Color(0xff027A48),
        currentIndex: selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/home_icon.png"),
            ),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/second_icon.png"),
            ),
            label: "second",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/third_icon.png"),
            ),
            label: "third",
          ),
        ],
      ),
    );
  }
}