import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qatana/core/resource/app_styles.dart';
import 'package:qatana/presentation/widgets/gradient_container.dart';
import 'package:qatana/presentation/widgets/primary_button.dart';

class PrivacySettings extends StatefulWidget {
  const PrivacySettings({super.key});

  @override
  State<PrivacySettings> createState() => _PrivacySettingsState();
}

class _PrivacySettingsState extends State<PrivacySettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text('Privacy Settings'),
      ),
      body: GradientContainer(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Profile Visibility', style: AppStyles.size16w700()),
                10.verticalSpace,
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        child: CheckboxListTile(
                          title: Text('Public'),
                          value: true,
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                    10.horizontalSpace,
                    Expanded(
                      child: Card(
                        child: CheckboxListTile(
                          title: Text('Private'),
                          value: false,
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                  ],
                ),
                20.verticalSpace,
                Text('Show Subscription Status', style: AppStyles.size16w700()),
                10.verticalSpace,
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        child: CheckboxListTile(
                          title: Text('Yes'),
                          value: true,
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                    10.horizontalSpace,
                    Expanded(
                      child: Card(
                        child: CheckboxListTile(
                          title: Text('No'),
                          value: false,
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                  ],
                ),
                20.verticalSpace,
                Text('Show Subscribed Creators', style: AppStyles.size16w700()),
                10.verticalSpace,
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        child: CheckboxListTile(
                          title: Text('Yes'),
                          value: false,
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                    10.horizontalSpace,
                    Expanded(
                      child: Card(
                        child: CheckboxListTile(
                          title: Text('No'),
                          value: true,
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                  ],
                ),
                20.verticalSpace,
                Text('Allow Messages From', style: AppStyles.size16w700()),
                10.verticalSpace,
                Card(
                  child: CheckboxListTile(
                    title: Text('Everyone'),
                    value: true,
                    onChanged: (value) {},
                  ),
                ),
                10.verticalSpace,
                Card(
                  child: CheckboxListTile(
                    title: Text('Subscribed Creator only'),
                    value: false,
                    onChanged: (value) {},
                  ),
                ),
                10.verticalSpace,
                Card(
                  child: CheckboxListTile(
                    title: Text('no one'),
                    value: false,
                    onChanged: (value) {},
                  ),
                ),
                const Spacer(),
                PrimaryButton(
                  label: 'Save',
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
