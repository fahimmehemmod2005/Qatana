import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qatana/core/constansts/app_colors.dart';
import 'package:qatana/core/constansts/app_icons.dart';
import 'package:qatana/core/constansts/app_images.dart';
import 'package:qatana/core/resource/app_styles.dart';
import 'package:qatana/core/route/route_manager.dart';
import 'package:qatana/presentation/widgets/gradient_container.dart';
import 'package:qatana/presentation/widgets/primary_button.dart';

class FansProfileScreen extends StatefulWidget {
  const FansProfileScreen({super.key});

  @override
  State<FansProfileScreen> createState() => _FansProfileScreenState();
}

class _FansProfileScreenState extends State<FansProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text('Profile'),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_outlined,color: Colors.white,)),
          IconButton(onPressed: (){
            Navigator.pushNamed(context, Routes.settingsRoute);
          }, icon: Icon(Icons.settings,color: Colors.white,)),
        ],
      ),
      body: GradientContainer(
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12.0),
                        image: DecorationImage(
                          image: AssetImage(AppImages.fahimCover),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -50,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 120.0,
                        width: 120.0,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.blue,width: 3),
                          image: DecorationImage(
                            image: AssetImage(AppImages.fahim),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                50.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('MD FAHIM MEHEMMOD',
                      style: AppStyles.size24w700(),
                      textAlign: TextAlign.center,
                    ),
                    10.horizontalSpace,
                    Image.asset(AppIcons.blueCheck,height: 30,width: 30,)
                  ],
                ),
                Text('@fahimmehemmod',style: AppStyles.size14w600(),),
                10.verticalSpace,
                Text('bio',style: AppStyles.size16w400(),),
                Text('Biggest supporter of @creatorname ⭐ | VIP subscriber | Living my best life through inspiration 💫',
                style: AppStyles.size16w400(),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                10.verticalSpace,
                Text('Location',style: AppStyles.size14w600(),),
                Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on_outlined,color: Colors.white,),
                    5.horizontalSpace,
                    Text('Narayanganj, Dhaka, Bangladesh',
                      style: AppStyles.size16w400(),
                      textAlign: TextAlign.center,),
                  ],
                ),
                20.verticalSpace,
                Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: BorderSide(
                      color: AppColors.normal,
                      width: 1.5
                    )
                  ),
                  child: Container(
                    width: double.infinity,
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('📊 My Stats',style: AppStyles.size16w700(),),
                          10.verticalSpace,
                          Text('💎 Current Plan: Yearly VIP',style: AppStyles.size14w600(),),
                          5.verticalSpace,
                          Text('📅 Valid until: Dec 31, 2026',style: AppStyles.size14w600(),),
                          5.verticalSpace,
                          Text('💬 DMs Remaining: 38/50',style: AppStyles.size14w600(),),
                        ],
                      )),
                ),
                10.verticalSpace,
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            side: BorderSide(
                                color: AppColors.normal,
                                width: 1.5
                            )
                        ),
                        child: Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('⭐ Subscribed Creators (5)',style: AppStyles.size16w700(),),
                                10.verticalSpace,
                                Text('Creator 1',style: AppStyles.size14w600(),),
                                5.verticalSpace,
                                Text('Creator 2',style: AppStyles.size14w600(),),
                                5.verticalSpace,
                                Text('Creator 3',style: AppStyles.size14w600(),),
                                TextButton(onPressed: (){}, child: Text('View all'))
                              ],
                            )),
                      ),
                    ),
                    10.horizontalSpace,
                    Expanded(
                      child: Card(
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            side: BorderSide(
                                color: AppColors.normal,
                                width: 1.5
                            )
                        ),
                        child: Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('🛍️ Recent Purchases (3)',style: AppStyles.size16w700(),),
                                10.verticalSpace,
                                Text('Item 1',style: AppStyles.size14w600(),),
                                5.verticalSpace,
                                Text('Item 2',style: AppStyles.size14w600(),),
                                5.verticalSpace,
                                Text('Item 3',style: AppStyles.size14w600(),),
                                TextButton(onPressed: (){}, child: Text('View all'))
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
                10.verticalSpace,
                Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      side: BorderSide(
                          color: AppColors.normal,
                          width: 1.5
                      )
                  ),
                  child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('📢 Joined Channels (8)',style: AppStyles.size14w600(),),
                          5.verticalSpace,
                          Text('💬 Active Group Chats (12)',style: AppStyles.size14w600(),),
                          5.verticalSpace,
                          Text('🔖 Saved Content',style: AppStyles.size14w600(),),
                        ],
                      )),
                ),
                20.verticalSpace,
                PrimaryButton(
                  label: 'Edit profile',
                  onPressed: (){
                    Navigator.pushNamed(context, Routes.fansEditProfile);
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
