import 'package:flutter/material.dart';
import 'package:tgs2_responsi/screens/logoutScreen.dart';
import 'package:tgs2_responsi/screens/splashScreen.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:tgs2_responsi/screens/profileScreen.dart';
import 'package:tgs2_responsi/screens/homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    ProfileScreen(),
    LogoutScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              selectedColor: Colors.blue,
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
              selectedColor: Colors.blueAccent,
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.logout),
              title: Text("Logout"),
              selectedColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
