import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qatana/core/resource/app_styles.dart';
import 'package:qatana/core/route/route_manager.dart';
import 'package:qatana/presentation/widgets/gradient_container.dart';

class MessageSettings extends StatefulWidget {
  const MessageSettings({super.key});

  @override
  State<MessageSettings> createState() => _MessageSettingsState();
}

class _MessageSettingsState extends State<MessageSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text('Settings'),
      ),
      body: GradientContainer(
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('🔔 Notifications', style: AppStyles.size16w700()),
                10.verticalSpace,
                Card(
                  child: SwitchListTile(
                    title: Text('Show message preview'),
                    value: true,
                    onChanged: (value) {},
                  ),
                ),
                Card(
                  child: SwitchListTile(
                    title: Text('Sound'),
                    value: true,
                    onChanged: (value) {},
                  ),
                ),
                Card(
                  child: SwitchListTile(
                    title: Text('Vibrate'),
                    value: true,
                    onChanged: (value) {},
                  ),
                ),
                10.verticalSpace,
                Text('🔒 Privacy', style: AppStyles.size16w700()),
                10.verticalSpace,
                Card(
                  child: SwitchListTile(
                    title: Text('Read Receipts'),
                    value: true,
                    onChanged: (value) {},
                  ),
                ),
                Card(
                  child: SwitchListTile(
                    title: Text('last seen'),
                    value: true,
                    onChanged: (value) {},
                  ),
                ),
                Card(
                  child: SwitchListTile(
                    title: Text('online status'),
                    value: true,
                    onChanged: (value) {},
                  ),
                ),
                10.verticalSpace,
                Text('💬 Chat Settings', style: AppStyles.size16w700()),
                10.verticalSpace,
                Card(
                  child: SwitchListTile(
                    title: Text('Enter to send'),
                    value: true,
                    onChanged: (value) {},
                  ),
                ),
                Card(
                  child: SwitchListTile(
                    title: Text('save to gallery'),
                    value: true,
                    onChanged: (value) {},
                  ),
                ),
                Card(
                  child: SwitchListTile(
                    title: Text('auto-download media'),
                    value: true,
                    onChanged: (value) {},
                  ),
                ),
                10.verticalSpace,
                Text('🚫 Blocked Users', style: AppStyles.size16w700()),
                10.verticalSpace,
                Card(
                  child: ListTile(
                    title: Text('Block user'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.pushNamed(context, Routes.blockUsers);
                    },
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
