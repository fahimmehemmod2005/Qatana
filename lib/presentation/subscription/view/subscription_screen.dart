import 'package:flutter/material.dart';
import 'package:qatana/core/route/route_manager.dart';
import 'package:qatana/presentation/widgets/gradient_container.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text('Membership'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.bottomNav);
            },
            child: Text('Skip', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
      body: GradientContainer(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
