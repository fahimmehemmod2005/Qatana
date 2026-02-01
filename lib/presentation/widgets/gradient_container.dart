import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final Widget? child;
  const GradientContainer({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
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
      child: Scaffold(backgroundColor: Colors.transparent, body: child),
    );
  }
}
