import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qatana/core/constansts/app_icons.dart';
import 'package:qatana/core/constansts/app_images.dart';
import 'package:qatana/core/resource/app_styles.dart';
import 'package:qatana/presentation/widgets/gradient_container.dart';
import 'package:qatana/presentation/widgets/input_field.dart';

import '../widgets/message_card.dart';
import '../widgets/vip_online_card.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  var vipOnlineCard = [
    {'image': AppImages.user1, 'name': 'ray'},
    {'image': AppImages.user2, 'name': 'ray'},
    {'image': AppImages.user3, 'name': 'ray'},
    {'image': AppImages.user4, 'name': 'ray'},
    {'image': AppImages.user5, 'name': 'ray'},
    {'image': AppImages.user6, 'name': 'ray'},
  ];
  var chat = [
    {
      'image': AppImages.user1,
      'title': 'alex',
      'subtitle': 'Sent a new message',
      'time': '9:30 AM',
    },
    {
      'image': AppImages.user2,
      'title': 'alex',
      'subtitle': 'Sent a new message',
      'time': '9:30 AM',
    },
    {
      'image': AppImages.user3,
      'title': 'alex',
      'subtitle': 'Sent a new message',
      'time': '9:30 AM',
    },
    {
      'image': AppImages.user4,
      'title': 'alex',
      'subtitle': 'Sent a new message',
      'time': '9:30 AM',
    },
    {
      'image': AppImages.user5,
      'title': 'alex',
      'subtitle': 'Sent a new message',
      'time': '9:30 AM',
    },
    {
      'image': AppImages.user6,
      'title': 'alex',
      'subtitle': 'Sent a new message',
      'time': '9:30 AM',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Messages'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.edit_note, color: Colors.white),
          ),
        ],
        automaticallyImplyLeading: false,
      ),
      body: GradientContainer(
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InputField(hintText: 'Search anyone', suffixIcon: Icons.person),
                20.verticalSpace,
                Text('ONLINE', style: TextStyle(color: Colors.green)),
                5.verticalSpace,
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: vipOnlineCard.map((profile) {
                      return VipOnlineCard(
                        image: profile['image'],
                        name: profile['name'],
                        onTap: () {},
                      );
                    }).toList(),
                  ),
                ),
                10.verticalSpace,
                Column(
                  children: chat.map((profile) {
                    return MessageCard(
                      image: profile['image'],
                      title: profile['title'],
                      subtitle: profile['subtitle'],
                      time: profile['time'],
                      onTap: () {},
                    );
                  }).toList(),
                ),
                10.verticalSpace,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
