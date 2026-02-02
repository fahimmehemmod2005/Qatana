import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qatana/presentation/widgets/gradient_container.dart';
import 'package:qatana/presentation/widgets/input_field.dart';
import 'package:qatana/presentation/widgets/primary_button.dart';

import '../../../core/constansts/app_images.dart';
import '../../widgets/widget_country_picker_field.dart';

class FansEditProfile extends StatefulWidget {
  const FansEditProfile({super.key});

  @override
  State<FansEditProfile> createState() => _FansEditProfileState();
}

class _FansEditProfileState extends State<FansEditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text('Edit Profile'),
      ),
      body: GradientContainer(
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                      right: 0,
                      top: 0,
                      child: IconButton(
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        icon: Icon(Icons.camera_alt, color: Colors.black),
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
                          image: DecorationImage(
                            image: AssetImage(AppImages.fahim),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 140,
                      bottom: -60,
                      child: IconButton(
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        icon: Icon(Icons.camera_alt, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                50.verticalSpace,
                InputField(topLabel: 'Name', hintText: 'Enter your name'),
                10.verticalSpace,
                InputField(
                  topLabel: 'User name',
                  hintText: 'Enter your user name',
                ),
                Text(
                  '⚠️ Username can only be changed once',
                  style: TextStyle(color: Colors.yellowAccent),
                ),
                10.verticalSpace,
                InputField(topLabel: 'Email', hintText: 'Enter your email'),
                10.verticalSpace,
                WidgetCountryPickerField(
                  topLabel: 'Phone number',
                  hintText: 'Enter your number',
                ),
                10.verticalSpace,
                InputField(topLabel: 'Location', hintText: 'Dhaka, Bangladesh'),
                10.verticalSpace,
                InputField(
                  topLabel: 'BIO',
                  hintText: 'Enter your bio',
                  maxLine: 10,
                ),
                Text('150/200 characters', style: TextStyle(color: Colors.yellowAccent)),
                10.verticalSpace,
                Row(
                  children: [
                    Expanded(
                      child: PrimaryButton(
                        showGradient: false,
                        backgroundColor: Colors.transparent,
                        label: 'Cancel',
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    10.horizontalSpace,
                    Expanded(
                      child: PrimaryButton(
                        label: 'Save',
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
                10.verticalSpace
              ],
            ),
          ),
        ),
      ),
    );
  }
}
