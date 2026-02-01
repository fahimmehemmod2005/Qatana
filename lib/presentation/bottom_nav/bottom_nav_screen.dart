import 'package:flutter/material.dart';
import 'package:qatana/core/constansts/app_colors.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {

  int currentIndex = 0;
  final screens = [
    Container(color: Colors.black,child: Center(child: Text('Home'),),),
    Container(color: Colors.black,child: Center(child: Text('Dashboard'),),),
    Container(color: Colors.black,child: Center(child: Text('Message'),),),
    Container(color: Colors.black,child: Center(child: Text('Profile'),),),
  ];

  void changeIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 85,
          margin: const EdgeInsets.symmetric(horizontal: 15.0),
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.normal),
            borderRadius: BorderRadius.circular(100),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF1a1625), // Dark purple-black
                Color(0xFF0d0a15), // Deep black
                Color(0xFF1e1433), // Dark purple
                Color(0xFF0a0812), // Very dark black
              ],
              stops: [0.0, 0.3, 0.7, 1.0],
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _navItem(Icons.home_rounded, "Home", 0),
              _navItem(Icons.dashboard, "Dashboard", 1),
              _navItem(Icons.message, "Message", 2),
              _navItem(Icons.person, "Profile", 3),
            ],
          ),
        ),
      ),
    );
  }
  Widget _navItem(IconData icon, String label, int index) {
    final isActive = currentIndex == index;

    return GestureDetector(
      onTap: () => changeIndex(index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isActive ? const Color(0xff7C5BFD) : Colors.white,
          ),
          const SizedBox(height: 5),
          Text(
            label,
            style: TextStyle(
              fontSize: isActive ? 15 : 13,
              fontWeight: FontWeight.w500,
              color: isActive ? const Color(0xff7C5BFD) : Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
