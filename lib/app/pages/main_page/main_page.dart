import 'package:biblioteca/app/pages/home_page/home_page.dart';
import 'package:biblioteca/app/pages/library_page/library_page.dart';
import 'package:biblioteca/app/pages/raffles_page/raffles_page.dart';
import 'package:biblioteca/app/pages/search_page/search_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentPage = 0;

  final List<Widget> _screens = const [
    HomePage(),
    LibraryPage(),
    RafflesPage(),
    SearchPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        onTap: onTabTapped,
        items: [
          getBarItem(Icons.home),
          getBarItem(Icons.book),
          getBarItem(Icons.card_giftcard),
          getBarItem(Icons.search),
        ],
      ),
    );
  }

  BottomNavigationBarItem getBarItem(IconData icon) {
    return BottomNavigationBarItem(
        icon: Icon(
          icon,
          size: 35,
        ),
        label: "");
  }

  void onTabTapped(int index) {
    setState(() {
      _currentPage = index;
    });
  }
}
