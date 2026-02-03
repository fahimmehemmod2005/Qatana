import 'package:flutter/material.dart';
import 'package:qatana/core/constansts/app_colors.dart';

class NotificationCard extends StatelessWidget {
  final String? image;
  final String? title;
  final String? time;
  final String? content;
  const NotificationCard({
    super.key, this.image, this.title, this.time, this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      padding: EdgeInsets.all(15.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.normal.withAlpha(30),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        children: [
          Container(
            height: 48.0,
            width: 48.0,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white.withAlpha(30),
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Image.asset(image ?? '',height: 20.0,width: 20.0,color: Colors.white,),
          ),
          const SizedBox(width: 15.0,),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title ?? '',
                      style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(time ?? '')
                  ],
                ),
                const SizedBox(height: 5.0,),
                Text(
                  content ?? '',
                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.white),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}