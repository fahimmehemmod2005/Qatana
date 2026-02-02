import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qatana/core/constansts/app_icons.dart';
import 'package:qatana/core/constansts/app_images.dart';
import 'package:qatana/core/route/route_manager.dart';
import 'package:qatana/presentation/widgets/gradient_container.dart';
import 'package:qatana/presentation/widgets/primary_button.dart';

import '../../../core/constansts/app_colors.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  String? selected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text('Select payment method'),
      ),
      body: GradientContainer(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                _cards(card: AppIcons.credit, name: 'Credit/Debit'),
                15.verticalSpace,
                _cards(card: AppIcons.master, name: 'MASTER'),
                15.verticalSpace,
                _cards(card: AppIcons.visa, name: 'VISA'),
                const Spacer(),
                PrimaryButton(
                  label: 'Continue',
                  onPressed: (){
                    Navigator.pushNamed(context, Routes.paymentInfoRoute);
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

  Widget _cards({required String card,required String name}) {
    bool isSelected = selected == card;
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = card;
        });
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? AppColors.primaryColor : Colors.grey,
            width: 1.5,
          ),
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
        child: Row(
          children: [
            Image.asset(
              card,
              height: 50,
              width: 50,
            ),
            10.horizontalSpace,
            Text(
              name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            Icon( isSelected ?
                Icons.check_circle
                : Icons.circle_outlined,
                size: 30),
          ],
        ),
      ),
    );
  }
}
