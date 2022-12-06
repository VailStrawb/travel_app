import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel_app/ui/home/unvisited_countries_screen.dart';
import 'package:travel_app/ui/home/saved_countries_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    UnvisitedCountriesScreen(),
    SavedCountriesScreen(),
  ];

  clearSharedPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('newLaunch');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        selectedFontSize: 13,
        selectedItemColor: const Color.fromARGB(255, 210, 84, 41),
        unselectedItemColor: Colors.white54,
        iconSize: 26.0,
        backgroundColor: const Color.fromARGB(255, 25, 25, 25),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart),
            label: 'My Countries',
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
