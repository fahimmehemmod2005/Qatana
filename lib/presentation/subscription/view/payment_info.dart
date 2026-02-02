import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qatana/core/constansts/app_images.dart';
import 'package:qatana/core/route/route_manager.dart';
import 'package:qatana/presentation/widgets/gradient_container.dart';
import 'package:qatana/presentation/widgets/input_field.dart';
import 'package:qatana/presentation/widgets/primary_button.dart';

class PaymentInfo extends StatefulWidget {
  const PaymentInfo({super.key});

  @override
  State<PaymentInfo> createState() => _PaymentInfoState();
}

class _PaymentInfoState extends State<PaymentInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text('Payment Info'),
      ),
      body: GradientContainer(
        child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListView(
                children: [
                  Image.asset(AppImages.card,fit: BoxFit.cover,),
                  20.verticalSpace,
                  InputField(
                    topLabel: 'Card number',
                    hintText: '1234 5678 9012 3456',
                  ),
                  20.verticalSpace,
                  InputField(
                    topLabel: 'Cardholder name',
                    hintText: 'MD FAHIM MEHEMMOD',
                  ),
                  20.verticalSpace,
                  Row(
                    children: [
                      Expanded(
                          child: InputField(
                            topLabel: 'Expiry date',
                            hintText: 'MM/YY',
                          ),
                      ),
                      15.horizontalSpace,
                      Expanded(
                        child: InputField(
                          topLabel: 'CVV',
                          hintText: '123',
                        ),
                      ),
                    ],
                  ),
                  30.verticalSpace,
                  PrimaryButton(
                    label: 'Continue',
                    onPressed: (){
                      Navigator.pushNamed(context, Routes.reviewSummaryRoute);
                    },
                  ),
                  10.verticalSpace,
                ],
              ),
            )
        ),
      ),
    );
  }
}
