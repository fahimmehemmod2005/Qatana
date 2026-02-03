import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qatana/core/route/route_manager.dart';
import '../../../core/constansts/app_images.dart';
import '../../widgets/gradient_container.dart';
import '../../widgets/show_white_dialog.dart';
import '../widgets/message_card.dart';

class Groups extends StatefulWidget {
  const Groups({super.key});

  @override
  State<Groups> createState() => _GroupsState();
}

class _GroupsState extends State<Groups> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      body: GradientContainer(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                10.verticalSpace,
                InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Create group',
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        10.horizontalSpace,
                        Icon(Icons.group_add),
                      ],
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, Routes.createGroup);
                    },
                  ),
                10.verticalSpace,
                MessageCard(
                  image: AppImages.user2,
                  name: 'VIP Support group',
                  subtitle: "Sarah that's amazing 🔥",
                  count: '5',
                  time: '2:30 AM',
                  views: 'Member 80',
                  onTap: () {
                    Navigator.pushNamed(context, Routes.chatRoute);
                  },
                  onLongPress: (){
                    showWhiteDialog(
                        context: context,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextButton(onPressed: (){}, child: Text('Add member',style: TextStyle(color: Colors.white),)),
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
      ),
    );
  }
}
