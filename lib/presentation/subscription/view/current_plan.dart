import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qatana/presentation/subscription/view/subscription_screen.dart';
import 'package:qatana/presentation/widgets/gradient_container.dart';
import '../../../core/constansts/app_icons.dart';
import '../../../core/resource/app_styles.dart';
import '../../../core/route/route_manager.dart';
import '../../widgets/custom_rich_text.dart';
import '../../widgets/primary_button.dart';
import '../../widgets/show_white_dialog.dart';
import '../widgets/membership_card.dart';

class CurrentPlan extends StatefulWidget {
  const CurrentPlan({super.key});

  @override
  State<CurrentPlan> createState() => _CurrentPlanState();
}

class _CurrentPlanState extends State<CurrentPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text('Current Plan'),
      ),
      body: GradientContainer(
        child: SafeArea(child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                ],
              ),
            ),
            20.verticalSpace,
            Card(
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("You're currently on the Premium Monthly Plan",
                      style: AppStyles.size16w600(color: Colors.white),
                    ),
                    10.verticalSpace,
                    Text("Next billing date: 25 November 2025",
                      style: AppStyles.size14w400(),),
                    10.verticalSpace,
                    PrimaryButton(
                      showGradient: false,
                      backgroundColor: Colors.transparent,
                      borderColor: Colors.red,
                      label: 'Change Plan',
                      textColor: Colors.white,
                      onPressed:  () {
                        showWhiteDialog(
                          context: context,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Are you sure',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700,color: Colors.black),),
                              20.verticalSpace,
                              Row(
                                children: [
                                  Expanded(
                                    child: PrimaryButton(
                                      showGradient: false,
                                      backgroundColor: Colors.red,
                                      label: 'Change',
                                      onPressed: () {
                                        Navigator.pop(context);
                                        Navigator.pushNamed(
                                          context,
                                          Routes.subscriptionRoute,
                                        );
                                      },
                                    ),
                                  ),
                                  10.horizontalSpace,
                                  Expanded(
                                    child: PrimaryButton(
                                      label: 'Cancel',
                                      showGradient: false,
                                      backgroundColor: Colors.transparent,
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),)),
      ),
    );
  }
}
