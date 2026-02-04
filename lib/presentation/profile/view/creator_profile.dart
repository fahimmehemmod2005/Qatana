import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qatana/core/constansts/app_images.dart';
import '../../../core/constansts/app_colors.dart';
import '../../../core/constansts/app_icons.dart';
import '../../../core/resource/app_styles.dart';
import '../../../core/route/route_manager.dart';
import '../../widgets/gradient_container.dart';
import '../../widgets/primary_button.dart';

class CreatorProfile extends StatefulWidget {
  const CreatorProfile({super.key});

  @override
  State<CreatorProfile> createState() => _CreatorProfileState();
}

class _CreatorProfileState extends State<CreatorProfile> {
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
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.notificationRoute);
            },
            icon: Icon(Icons.notifications_outlined, color: Colors.white),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.settingsRoute);
            },
            icon: Icon(Icons.settings, color: Colors.white),
          ),
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
                          image: NetworkImage(
                            'https://thumbs.dreamstime.com/b/wild-daisy-flowers-growing-meadow-lots-white-pink-spring-ai-generated-400953384.jpg?w=992',
                          ),
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
                          border: Border.all(color: Colors.blue, width: 3),
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://img.freepik.com/free-vector/blue-circle-with-white-user_78370-4707.jpg?semt=ais_hybrid&w=740&q=80',
                            ),
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
                    Text(
                      'Alex Alex',
                      style: AppStyles.size24w700(),
                      textAlign: TextAlign.center,
                    ),
                    10.horizontalSpace,
                    Image.asset(
                      AppIcons.checkColor2,
                      height: 40.h,
                      width: 40.h,
                    ),
                  ],
                ),
                Text('@alex123', style: AppStyles.size14w600()),
                10.verticalSpace,
                Text('bio', style: AppStyles.size16w400()),
                Text(
                  'Biggest supporter of @creatorname ⭐ | VIP subscriber | Living my best life through inspiration 💫',
                  style: AppStyles.size16w400(),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                10.verticalSpace,
                Text('Location', style: AppStyles.size14w600()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on_outlined, color: Colors.white),
                    5.horizontalSpace,
                    Text(
                      'UK',
                      style: AppStyles.size16w400(),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                20.verticalSpace,
                PrimaryButton(
                  showGradient: false,
                  backgroundColor: Colors.red,
                  label: 'Subscribe ⭐',
                  onPressed: () {},
                ),
                5.verticalSpace,
                Text(
                  'Monthly \$499 | Yearly \$3500',
                  style: AppStyles.size14w600(),
                ),
                20.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppIcons.instagram),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppIcons.youtube),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppIcons.tiktok),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                20.verticalSpace,
                Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: BorderSide(color: AppColors.normal, width: 1.5),
                  ),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('📊 Stats', style: AppStyles.size16w700()),
                        10.verticalSpace,
                        Text(
                          '12.6k Subscribers',
                          style: AppStyles.size14w600(),
                        ),
                        5.verticalSpace,
                        Text('45.5k Total Fans', style: AppStyles.size14w600()),
                        5.verticalSpace,
                        Text(
                          'Member since Jan 2024',
                          style: AppStyles.size14w600(),
                        ),
                      ],
                    ),
                  ),
                ),
                10.verticalSpace,
                Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: BorderSide(color: AppColors.normal, width: 1.5),
                  ),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('🛍️ Shop', style: AppStyles.size16w700()),
                        10.verticalSpace,
                        Text('Product 1', style: AppStyles.size14w600()),
                        5.verticalSpace,
                        Text('Product 2', style: AppStyles.size14w600()),
                        5.verticalSpace,
                        Text('Product 3', style: AppStyles.size14w600()),
                        TextButton(onPressed: () {}, child: Text('View all')),
                      ],
                    ),
                  ),
                ),
                10.verticalSpace,
                Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: BorderSide(color: AppColors.normal, width: 1.5),
                  ),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '📢 Broadcast Channels (8)',
                          style: AppStyles.size14w600(),
                        ),
                        5.verticalSpace,
                        Text(
                          '💬 Group Chats (12)',
                          style: AppStyles.size14w600(),
                        ),
                        5.verticalSpace,
                        Text(
                          '🎥 Exclusive Content',
                          style: AppStyles.size14w600(),
                        ),
                      ],
                    ),
                  ),
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
