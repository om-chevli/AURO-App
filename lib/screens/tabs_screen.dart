import 'package:auro_app/screens/landing_page.dart';
import 'package:auro_app/screens/news_stories_page.dart';
import 'package:auro_app/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages;

  initState() {
    _pages = [
      {
        'page': NewsStoriesPage(),
      },
      {
        'page': LandingPage(),
      },
    ];
    super.initState();
  }

  int _selectedPageIndex = 0;

  void _selectedPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex]["page"],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 15,
        // fixedColor: Colors.white,
        currentIndex: _selectedPageIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage(
                'assets/images/profile.png',
              ),
              height: 30,
              width: 30,
            ),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage(
                'assets/images/newspaper.png',
              ),
              height: 35,
              width: 35,
            ),
            label: "News-Stories",
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage(
                'assets/images/menu.png',
              ),
              height: 35,
              width: 35,
            ),
            label: "Food-Menu",
          ),
        ],
        onTap: _selectedPage,
        backgroundColor: Colors.white,
      ),
    );
  }
}
