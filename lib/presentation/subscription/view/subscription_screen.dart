import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qatana/core/constansts/app_icons.dart';
import 'package:qatana/core/resource/app_styles.dart';
import 'package:qatana/core/route/route_manager.dart';
import 'package:qatana/presentation/widgets/gradient_container.dart';

import '../widgets/membership_card.dart';

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
                children: [
                  20.verticalSpace,
                  Text('Free',style: AppStyles.size18w700(),),
                  10.verticalSpace,
                  MembershipCard(
                     child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      buildRow(text: 'Create account (Creator/Fan registration)'),
                      10.verticalSpace,
                      buildRow(text: 'Join broadcast channels and view content'),
                      10.verticalSpace,
                      buildRow(text: 'Participate in group chats'),
                      10.verticalSpace,
                      buildRow(text: 'Basic profile customization (avatar, bio)'),
                      10.verticalSpace,
                      buildRow(text: '2 Direct Messages per month'),
                      10.verticalSpace,
                      buildRow(text: 'Receive notifications'),
                    ],
                  ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Row buildRow({required String text}) {
  return Row(
    children: [
      Image.asset(AppIcons.check,color: Colors.white,),
      10.horizontalSpace,
      Text(text ?? '', style: AppStyles.size14w400()),
    ],
  );
}
