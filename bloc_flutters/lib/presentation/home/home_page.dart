import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomePage extends HookWidget {

    final _pages = [
    Center(child : Text("Home")),
    Center(child : Text("Profile")),
    // Center(child : Text("ABC"))
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     final _selectedIndex = useState(0);
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