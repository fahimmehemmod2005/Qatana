import 'package:flutter/material.dart';
import 'package:qatana/core/constansts/app_colors.dart';
import 'package:qatana/presentation/message/view/message_screen.dart';
import 'package:qatana/presentation/profile/view/fans_profile_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;

  final screens = [
    Container(
      color: Colors.white,
      child: const Center(
        child: Text('Home', style: TextStyle(color: Colors.black)),
      ),
    ),
    Container(
      color: Colors.black,
      child: const Center(
        child: Text('Dashboard', style: TextStyle(color: Colors.white)),
      ),
    ),
    const MessageScreen(),
    const FansProfileScreen()
  ];

  void changeIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      body: screens[currentIndex],
      bottomNavigationBar: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 5.0),
          height: 85,
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80.0),
            border: Border.all(color: AppColors.normal),
            gradient: const LinearGradient(
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
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isActive ? const Color(0xff7C5BFD) : Colors.white,
            size: 24,
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
