import 'package:flutter/material.dart';
import 'package:qatana/core/constansts/app_colors.dart';

class MembershipCard extends StatelessWidget {
  final Widget? child;
  const MembershipCard({
    super.key, this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.normal),
        borderRadius: BorderRadius.circular(12.0),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF2d1b4e),
            Color(0xFF1a1330),
            Color(0xFF3d2463),
            Color(0xFF1f1635),
          ],
          stops: [0.0, 0.3, 0.7, 1.0],
        ),
      ),
      child: child,
    );
  }
}
