import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qatana/core/constansts/app_colors.dart';
import 'package:qatana/core/constansts/app_icons.dart';
import 'package:qatana/presentation/auth/signin/view/signin_screen.dart';
import 'package:qatana/presentation/auth/signup/view/signup_screen.dart';
import 'package:qatana/presentation/widgets/gradient_container.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      animationDuration: Duration(milliseconds: 300),
      child: Scaffold(
        body: GradientContainer(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  20.verticalSpace,
                  Row(
                    children: [
                      Image.asset(
                        AppIcons.logo,
                        height: 60,
                        width: 60,
                      ),
                      15.horizontalSpace,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text('Title'), Text('Subtitle')],
                      ),
                    ],
                  ),
                  20.verticalSpace,
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
                          'Sign In',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Sign UP',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(children: [SignInScreen(), SignupScreen()]),
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
