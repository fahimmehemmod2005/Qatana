import 'package:flutter/material.dart';

class WidgetTitleSubtitle extends StatelessWidget {
  final String? title;
  final String? subTitle;
  const WidgetTitleSubtitle({
    super.key, this.title, this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title??'',
          style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.w500)
        ),
        Text(
          subTitle??'',
          style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w400)
        ),
      ],
    );
  }
}