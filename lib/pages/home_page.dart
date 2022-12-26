import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/personal_page.dart';
import 'package:instagram_clone/pages/reels_page.dart';
import 'package:instagram_clone/pages/search_page.dart';
import 'package:instagram_clone/pages/state_home_page.dart';
import 'favorites_page.dart';

class StateHomePage extends StatefulWidget {
  const StateHomePage({Key? key}) : super(key: key);

  @override
  State<StateHomePage> createState() => _HomePageState();
}

class _HomePageState extends State<StateHomePage> {

  int _selectedIndex = 0;

  void navigatorBottom(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> pages = [
    HomePage(),
    const SearchPage(),
    const ReelsPage(),
    const FavoritesPage(),
    const UsersPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: pages[_selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 65,
        child: BottomNavigationBar(
          iconSize: 30,
          onTap: navigatorBottom,
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.black,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search_sharp,
                  color: Colors.black,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_circle_outline,
                  color: Colors.black,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_outline,
                  color: Colors.black,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle_outlined,
                  color: Colors.black,
                ),
                label: ''),
          ],
        ),
      ),
    );
  }
}
