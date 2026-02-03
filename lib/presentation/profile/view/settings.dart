import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qatana/core/constansts/app_colors.dart';
import 'package:qatana/core/route/route_manager.dart';
import 'package:qatana/presentation/widgets/gradient_container.dart';
import 'package:qatana/presentation/widgets/primary_button.dart';
import 'package:qatana/presentation/widgets/show_white_dialog.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text('Settings'),
      ),
      body: GradientContainer(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: BorderSide(color: AppColors.normal),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.dashboard_customize, color: Colors.white),
                    title: Text('Analytics Dashboard'),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                    onTap: () {},
                  ),
                ),
                10.verticalSpace,
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: BorderSide(color: AppColors.normal),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.manage_history, color: Colors.white),
                    title: Text('Manage Content'),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                    onTap: () {},
                  ),
                ),
                10.verticalSpace,
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: BorderSide(color: AppColors.normal),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.shop, color: Colors.white),
                    title: Text('Manage Shop'),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                    onTap: () {},
                  ),
                ),
                10.verticalSpace,
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: BorderSide(color: AppColors.normal),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.payment, color: Colors.white),
                    title: Text('Payment and Invoice'),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                    onTap: () {},
                  ),
                ),
                10.verticalSpace,
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: BorderSide(color: AppColors.normal),
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.privacy_tip_outlined,
                      color: Colors.white,
                    ),
                    title: Text('Privacy Settings'),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, Routes.privacyRoute);
                    },
                  ),
                ),
                10.verticalSpace,
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: BorderSide(color: AppColors.normal),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.manage_accounts, color: Colors.white),
                    title: Text('Account Management'),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, Routes.accountManagement);
                    },
                  ),
                ),
                10.verticalSpace,
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: BorderSide(color: AppColors.normal),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.subscriptions_outlined, color: Colors.white),
                    title: Text('Manage Subscription'),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, Routes.currentPlanRoute);
                    },
                  ),
                ),
                10.verticalSpace,
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: BorderSide(color: AppColors.normal),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.lock_open, color: Colors.white),
                    title: Text('Change Password'),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, Routes.changePassword);
                    },
                  ),
                ),
                10.verticalSpace,
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: BorderSide(color: AppColors.normal),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.lock_reset, color: Colors.white),
                    title: Text('Forgot Password'),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, Routes.forgotRoute);
                    },
                  ),
                ),
                10.verticalSpace,
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Card(
        child: FloatingActionButton.extended(
          elevation: 1,
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: AppColors.normal),
          ),
          icon: const Icon(Icons.logout, color: Colors.red),
          label: const Text('Logout', style: TextStyle(color: Colors.white)),
          onPressed: () {
            showWhiteDialog(
              context: context,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Logout',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700,color: Colors.white),),
                  10.verticalSpace,
                  Text('Are you sure want to logout?',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.white),textAlign: TextAlign.center,),
                  20.verticalSpace,
                  Row(
                    children: [
                      Expanded(
                        child: PrimaryButton(
                          showGradient: false,
                          backgroundColor: Colors.red,
                          label: 'Logout',
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pushNamed(
                              context,
                              Routes.registrationRoute,
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
      ),
    );
  }
}
