import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qatana/core/resource/app_styles.dart';
import 'package:qatana/presentation/widgets/gradient_container.dart';
import 'package:qatana/presentation/widgets/input_field.dart';
import 'package:qatana/presentation/widgets/primary_button.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text('Change Password'),
      ),
      body: GradientContainer(
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                30.verticalSpace,
                Card(
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.info_rounded, color: Colors.grey),
                        10.horizontalSpace,
                        Expanded(
                          child: Text(
                            "You can change your password",
                            style: AppStyles.size14w600(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                20.verticalSpace,
                InputField(
                  topLabel: 'Current Password',
                  hintText: 'Enter your password',
                ),
                10.verticalSpace,
                InputField(
                  topLabel: 'New Password',
                  hintText: 'Enter your password',
                ),
                10.verticalSpace,
                InputField(
                  topLabel: 'Confirm Password',
                  hintText: 'confirm password',
                ),
                20.verticalSpace,
                PrimaryButton(
                  label: 'Change Password',
                  onPressed: (){
                    Navigator.pop(context);
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
