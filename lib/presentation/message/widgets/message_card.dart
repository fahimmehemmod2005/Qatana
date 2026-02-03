import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/resource/app_styles.dart';

class MessageCard extends StatelessWidget {
  final String? image;
  final String? name;
  final String? subtitle;
  final String? time;
  final String? count;
  final String? views;
  final void Function()? onTap;
  final void Function()? onLongPress;
  const MessageCard({
    super.key,
    this.image,
    this.name,
    this.subtitle,
    this.time,
    this.count,
    this.views,
    this.onTap, this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        onLongPress: onLongPress,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Container(
                height: 60.h,
                width: 60.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(image ?? ''),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              10.horizontalSpace,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name ?? '', style: AppStyles.size16w700()),
                    4.verticalSpace,
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            subtitle ?? '',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        6.horizontalSpace,
                        Text(count ?? ''),
                      ],
                    ),
                    6.verticalSpace,
                    Row(
                      children: [
                        Text(time ?? ''),
                        const Spacer(),
                        Icon(Icons.visibility, color: Colors.grey, size: 18),
                        6.horizontalSpace,
                        if(views != null)
                          Text(views!),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}