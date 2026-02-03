import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qatana/core/route/route_manager.dart';
import 'package:qatana/presentation/message/view/broadcast.dart';
import 'package:qatana/presentation/message/view/direct_messages.dart';
import 'package:qatana/presentation/message/view/groups.dart';
import 'package:qatana/presentation/widgets/gradient_container.dart';
import 'package:qatana/presentation/widgets/input_field.dart';
import '../../../core/constansts/app_colors.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text('Messages'),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.messageSettings);
              },
              icon: Icon(Icons.settings, color: Colors.white),
            ),
          ],
          automaticallyImplyLeading: false,
        ),
        body: GradientContainer(
          child: SafeArea(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    InputField(
                      hintText: 'Search Any One',
                      suffixIcon: Icons.person,
                    ),
                    10.verticalSpace,
                    Container(
                      height: 56,
                      width: double.infinity,
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        gradient: AppColors.primaryGradient,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TabBar(
                        dividerColor: Colors.transparent,
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelColor: Colors.white,
                        tabs: [
                          Text(
                            'Direct',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Groups',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Broadcast',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                          children: [
                            DirectMessages(),
                            Groups(),
                            Broadcast(),
                          ]
                      ),
                    ),
                  ],
                )
            )
          ),
        ),
      ),
    );
  }
}
