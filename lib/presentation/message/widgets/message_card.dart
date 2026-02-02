import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/resource/app_styles.dart';

class MessageCard extends StatelessWidget {
  final String? image;
  final String? title;
  final String? subtitle;
  final String? time;
  final void Function()? onTap;
  const MessageCard({
    super.key,
    this.image,
    this.title,
    this.subtitle,
    this.time,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        leading: Container(
          height: 60.h,
          width: 60.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage(image ?? '')),
          ),
        ),
        title: Text(title ?? '', overflow: TextOverflow.ellipsis, maxLines: 1),
        titleTextStyle: AppStyles.size14w400(),
        subtitle: Row(
          children: [
            Text(subtitle ?? '', overflow: TextOverflow.ellipsis, maxLines: 1),
            const Spacer(),
            Text(time ?? ''),
          ],
        ),
        subtitleTextStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        onTap: onTap,
      ),
    );
  }
}