import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qatana/core/constansts/app_icons.dart';
import 'package:qatana/core/resource/app_styles.dart';
import 'package:qatana/core/route/route_manager.dart';
import 'package:qatana/presentation/widgets/custom_rich_text.dart';
import 'package:qatana/presentation/widgets/gradient_container.dart';
import 'package:qatana/presentation/widgets/primary_button.dart';

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
                  Text('Free', style: AppStyles.size18w700()),
                  10.verticalSpace,
                  MembershipCard(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Image.asset(AppIcons.successful, height: 50, width: 50),
                            10.horizontalSpace,
                            Text('This is free to use',style: AppStyles.size16w700(),)
                          ],
                        ),
                        10.verticalSpace,
                        buildRow(
                          text: 'Create account',
                        ),
                        10.verticalSpace,
                        buildRow(
                          text: 'Join broadcast channels',
                        ),
                        10.verticalSpace,
                        buildRow(text: 'Participate in group chats'),
                        10.verticalSpace,
                        buildRow(
                          text: 'Basic profile customization',
                        ),
                        10.verticalSpace,
                        buildRow(text: '2 Direct Messages per month'),
                        10.verticalSpace,
                        buildRow(text: 'Receive notifications'),
                        10.verticalSpace,
                        PrimaryButton(
                          label: 'Try now for 7 days',
                          onPressed: (){
                            Navigator.pushNamed(context, Routes.bottomNav);
                          },
                        ),
                      ],
                    ),
                  ),
                  20.verticalSpace,
                  Text('Monthly', style: AppStyles.size18w700()),
                  10.verticalSpace,
                  MembershipCard(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Image.asset(AppIcons.checkColor, height: 50, width: 50),
                            10.horizontalSpace,
                            CustomRichText(
                              text1: '\$499/',
                              style1: AppStyles.size28w500(),
                              text2: 'month',
                              style2: AppStyles.size18w700(),
                            ),
                          ],
                        ),
                        10.verticalSpace,
                        buildRow(
                          text: ' All Free features',
                        ),
                        10.verticalSpace,
                        buildRow(
                          text: 'Messages to favorite creators',
                        ),
                        10.verticalSpace,
                        buildRow(text: 'Premium content access'),
                        10.verticalSpace,
                        buildRow(
                          text: ' Subscribe to multiple creators',
                        ),
                        10.verticalSpace,
                        buildRow(text: 'Ad-free experience'),
                        10.verticalSpace,
                        buildRow(text: '10% discount on shop purchases'),
                        10.verticalSpace,
                        buildRow(text: '"Premium Fan" badge'),
                        10.verticalSpace,
                        buildRow(text: 'Priority customer support'),
                        10.verticalSpace,
                        buildRow(text: 'Priority access in group chats'),
                        10.verticalSpace,
                        buildRow(text: 'Early access to new content'),
                        10.verticalSpace,
                        PrimaryButton(
                          label: 'Buy Now',
                          onPressed: (){},
                        ),
                      ],
                    ),
                  ),
                  20.verticalSpace,
                  Text('Yearly', style: AppStyles.size18w700()),
                  10.verticalSpace,
                  MembershipCard(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Image.asset(AppIcons.checkColor2, height: 50, width: 50),
                            10.horizontalSpace,
                            CustomRichText(
                              text1: '\$3500/',
                              style1: AppStyles.size28w500(),
                              text2: 'Year',
                              style2: AppStyles.size18w700(),
                            ),
                          ],
                        ),
                        10.verticalSpace,
                        buildRow(
                          text: ' All Monthly features',
                        ),
                        10.verticalSpace,
                        buildRow(
                          text: 'Messages to favorite creators',
                        ),
                        10.verticalSpace,
                        buildRow(text: 'Unlimited creator subscriptions'),
                        10.verticalSpace,
                        buildRow(
                          text: 'Send voice & video messages',
                        ),
                        10.verticalSpace,
                        buildRow(text: '15% discount on shop purchases'),
                        10.verticalSpace,
                        buildRow(text: '"VIP Fan" badge'),
                        10.verticalSpace,
                        buildRow(text: 'Unlimited DMs on birthday month'),
                        10.verticalSpace,
                        buildRow(text: '2 months extra free'),
                        10.verticalSpace,
                        buildRow(text: 'Free merchandise'),
                        10.verticalSpace,
                        buildRow(text: 'Analytics dashboard access'),
                        10.verticalSpace,
                        PrimaryButton(
                          label: 'Buy Now',
                          onPressed: (){},
                        ),
                      ],
                    ),
                  ),
                  10.verticalSpace,
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
      Image.asset(AppIcons.check, color: Colors.white),
      10.horizontalSpace,
      Text(text, style: AppStyles.size14w400()),
    ],
  );
}
