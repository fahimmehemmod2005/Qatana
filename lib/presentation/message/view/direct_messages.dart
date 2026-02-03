import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qatana/core/resource/app_styles.dart';
import 'package:qatana/core/route/route_manager.dart';
import 'package:qatana/presentation/message/widgets/vip_online_card.dart';
import 'package:qatana/presentation/widgets/show_white_dialog.dart';

import '../../../core/constansts/app_images.dart';
import '../../widgets/gradient_container.dart';
import '../widgets/message_card.dart';

class DirectMessages extends StatefulWidget {
  const DirectMessages({super.key});

  @override
  State<DirectMessages> createState() => _DirectMessagesState();
}

class _DirectMessagesState extends State<DirectMessages> {
  var vipOnlineCard = [
    {'image': AppImages.user1, 'name': 'ray'},
    {'image': AppImages.user2, 'name': 'ray'},
    {'image': AppImages.user3, 'name': 'ray'},
    {'image': AppImages.user4, 'name': 'ray'},
    {'image': AppImages.user5, 'name': 'ray'},
    {'image': AppImages.user6, 'name': 'ray'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      body: GradientContainer(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              10.verticalSpace,
              Text(
                'ONLINE',
                style: TextStyle(color: Colors.green, fontSize: 20.sp),
              ),
              5.verticalSpace,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: vipOnlineCard.map((online) {
                    return VipOnlineCard(
                      image: online['image'],
                      name: online['name'],
                      onTap: () {
                        Navigator.pushNamed(context, Routes.chatRoute);
                      },
                    );
                  }).toList(),
                ),
              ),
              5.verticalSpace,
              MessageCard(
                image: AppImages.user1,
                name: 'Alex Alex',
                subtitle: 'Send you a now message',
                count: '5',
                time: '2:30 AM',
                onTap: (){
                  Navigator.pushNamed(context, Routes.chatRoute);
                },
                onLongPress: (){
                  showWhiteDialog(
                    context: context,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                          Navigator.pushNamed(context, Routes.creatorProfile);
                        }, child: Text('view profile',style: TextStyle(color: Colors.white),)),
                        TextButton(onPressed: (){}, child: Text('Delete',style: TextStyle(color: Colors.red),)),
                        TextButton(onPressed: (){}, child: Text('Block',style: TextStyle(color: Colors.red))),
                      ],
                    )
                  );
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
