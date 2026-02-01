import 'dart:async';

import 'package:flutter/material.dart';
import 'package:qatana/core/constansts/app_icons.dart';
import 'package:qatana/core/route/route_manager.dart';
import 'package:qatana/presentation/widgets/gradient_container.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, Routes.registrationRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
        child: Center(
          child: Image.asset(AppIcons.logo),
        ),
      ),
    );
  }
}
