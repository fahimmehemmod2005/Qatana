import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qatana/core/constansts/app_colors.dart';
import 'package:qatana/core/constansts/app_icons.dart';
import 'package:qatana/core/route/route_manager.dart';
import 'package:qatana/presentation/widgets/gradient_container.dart';
import 'package:qatana/presentation/widgets/primary_button.dart';
import 'package:qatana/presentation/widgets/show_white_dialog.dart';

class ReviewSummary extends StatefulWidget {
  const ReviewSummary({super.key});

  @override
  State<ReviewSummary> createState() => _ReviewSummaryState();
}

class _ReviewSummaryState extends State<ReviewSummary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text('Review Summary'),
      ),
      body: GradientContainer(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.normal),
                    borderRadius: BorderRadius.circular(12.0),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF2d1b4e),
                        Color(0xFF1a1330),
                        Color(0xFF3d2463),
                        Color(0xFF1f1635),
                      ],
                      stops: [0.0, 0.3, 0.7, 1.0],
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Order Summary',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      15.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text('Pro Plan'), Text('\$499')],
                      ),
                      15.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text('Building Cycle'), Text('Monthly')],
                      ),
                      15.verticalSpace,
                      const Divider(color: Colors.grey),
                      15.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total'),
                          Text(
                            '\$499',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                20.verticalSpace,
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.normal),
                    borderRadius: BorderRadius.circular(12.0),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF2d1b4e),
                        Color(0xFF1a1330),
                        Color(0xFF3d2463),
                        Color(0xFF1f1635),
                      ],
                      stops: [0.0, 0.3, 0.7, 1.0],
                    ),
                  ),
                  child: ListTile(
                    leading: Image.asset(
                      AppIcons.credit,
                      height: 40,
                      width: 40,
                    ),
                    title: Text('Credit / Debit Card'),
                    trailing: Text(
                      'Change',
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, Routes.paymentRoute);
                    },
                  ),
                ),
                const Spacer(),
                PrimaryButton(
                  label: 'Confirm Payment',
                  onPressed: (){
                    showWhiteDialog(
                        context: context,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(AppIcons.checkColor,height: 100,width: 100,),
                          20.verticalSpace,
                          Text('Welcome to PRO Plan!',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),),
                          10.verticalSpace,
                          Text('You have successfully subscribed Pro for 6 months! E-Receipt has been sent to your email address. Enjoy all the benefits!',
                              style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          20.verticalSpace,
                          PrimaryButton(
                            label: 'Enjoy',
                            onPressed: (){
                              Navigator.pop(context);
                              Navigator.pushNamed(context, Routes.bottomNav);
                            },
                          ),
                          10.verticalSpace
                        ],
                      )
                    );
                  },
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
