import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qatana/core/constansts/app_icons.dart';
import 'package:qatana/presentation/widgets/gradient_container.dart';

import '../widgets/notification_card.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  var today = [
    {
      'image': AppIcons.search,
      'title': "Sports Pick",
      'content':
      "We predict Man City to win based on home advantage, xG, and injuries.",
      'time': "2m",
    },
    {
      'image': AppIcons.search,
      'title': "Subscription Activated!",
      'content':
      "We predict Man City to win based on home advantage, xG, and injuries.",
      'time': "1m",
    },
    {
      'image': AppIcons.search,
      'title': "Sports Pick",
      'content':
      "We predict Man City to win based on home advantage, xG, and injuries.",
      'time': "2m",
    },
    {
      'image': AppIcons.search,
      'title': "Subscription Activated!",
      'content':
      "We predict Man City to win based on home advantage, xG, and injuries.",
      'time': "1m",
    },
    {
      'image':AppIcons.search,
      'title': "Sports Pick",
      'content':
      "We predict Man City to win based on home advantage, xG, and injuries.",
      'time': "3m",
    },
    {
      'image': AppIcons.search,
      'title': "Subscription Activated!",
      'content':
      "We predict Man City to win based on home advantage, xG, and injuries.",
      'time': "1m",
    },
  ];
  var yesterday = [
    {
      'image': AppIcons.search,
      'title': "Sports Pick",
      'content':
      "We predict Man City to win based on home advantage, xG, and injuries.",
      'time': "1d",
    },
    {
      'image': AppIcons.search,
      'title': "Subscription Activated!",
      'content':
      "You have successfully subscribed to Premium PICKS EMPIRE. Enjoy exclusive Picks and win your match! 🎉",
      'time': "2d",
    },
    {
      'image': AppIcons.search,
      'title': "Subscription Activated!",
      'content':
      "We predict Man City to win based on home advantage, xG, and injuries.",
      'time': "7d",
    },
    {
      'image': AppIcons.search,
      'title': "Sports Pick",
      'content':
      "We predict Man City to win based on home advantage, xG, and injuries.",
      'time': "2d",
    },
    {
      'image': AppIcons.search,
      'title': "Subscription Activated!",
      'content':
      "We predict Man City to win based on home advantage, xG, and injuries.",
      'time': "1d",
    },
    {
      'image': AppIcons.search,
      'title': "Sports Pick",
      'content':
      "We predict Man City to win based on home advantage, xG, and injuries.",
      'time': "2d",
    },
    {
      'image': AppIcons.search,
      'title': "Subscription Activated!",
      'content':
      "We predict Man City to win based on home advantage, xG, and injuries.",
      'time': "1d",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text('Notifications'),
      ),
      body: GradientContainer(
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Today'),
                        Text('Mark all as read'),
                      ],
                    ),
                    10.verticalSpace,
                    Column(
                      children: today.map((today) {
                        return NotificationCard(
                          image: today['image'],
                          title: today['title'],
                          time: today['time'],
                          content: today['content'],
                        );
                      }).toList(),
                    ),
                    20.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Yesterday'),
                        Text('Mark all as read'),
                      ],
                    ),
                    10.verticalSpace,
                    Column(
                      children: yesterday.map((yesterday) {
                        return NotificationCard(
                          image: yesterday['image'],
                          title: yesterday['title'],
                          time: yesterday['time'],
                          content: yesterday['content'],
                        );
                      }).toList(),
                    ),
              10.verticalSpace,
                  ],
                )
            ),
          ),
      ),
    );
  }
}
