import 'package:flutter/material.dart';
import 'package:weather_app/page/details/detail_page.dart';
import 'package:weather_app/page/home/home_page.dart';

class BottomCustom extends StatefulWidget {
  const BottomCustom({super.key});

  @override
  State<BottomCustom> createState() => _BottomCustomState();
}

class _BottomCustomState extends State<BottomCustom> {
  List<BottomNavigationBarItem> bnbItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined),
      label: "Home",
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.list),
      label: "Details",
    ),
  ];

  List<Widget> listPages = [const HomePage(), const DetailPage()];

  int activatePage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: listPages[activatePage],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white24,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black54,
          elevation: 0,
          items: bnbItems,
          currentIndex: activatePage,
          onTap: (index) {
            setState(() {
              activatePage = index;
            });
          }),
    );
  }
}
