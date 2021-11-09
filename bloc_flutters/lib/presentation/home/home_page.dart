import 'package:bloc_flutters/presentation/home/profile/profile_page.dart';
import 'package:bloc_flutters/presentation/home/view_data/view_data_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomePage extends HookWidget {
  HomePage({Key? key}) : super(key: key);
  final _pages = [
    ViewDataPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final _selectedIndex = useState(1);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home"),
      ),
      body: _pages[_selectedIndex.value],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (int index) {
          _selectedIndex.value = index;
        },
        currentIndex: _selectedIndex.value,
      ),
    );
  }
}
