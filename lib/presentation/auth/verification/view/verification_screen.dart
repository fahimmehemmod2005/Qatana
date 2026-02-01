import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:qatana/presentation/widgets/gradient_container.dart';
import 'package:qatana/presentation/widgets/primary_button.dart';
import 'package:qatana/presentation/widgets/widget_title_subtitle.dart';

import '../../../../core/route/route_manager.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  bool isLoading = false;
  final _pinController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    _pinController.dispose();
    super.dispose();
  }
  void _onPressed() async {
    setState(() {
      isLoading = true;
    });
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushNamed(context, Routes.resetPassRoute);
    print('OTP: ${_pinController.text.trim()}');
    setState(() {
      isLoading = false;
    });
  }
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      height: 70.0,
      width: 75.0,
      textStyle: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w500,
        color: Color(0xff7C5BFD),
      ),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(18.0),
        border: Border.all(color: Color(0xff7C5BFD)),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyWith(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(18.0),
        border: Border.all(color: Color(0xff7C5BFD)),
      ),
    );

    final errorPinTheme = defaultPinTheme.copyWith(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.0),
        border: Border.all(color: Colors.red, width: 1),
      ),
    );
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Verification'),
        centerTitle: true,
      ),
      body: GradientContainer(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  30.verticalSpace,
                  WidgetTitleSubtitle(
                    title: 'Verify OTP Code',
                    subTitle: 'Enter the 4-digit code sent to your email to complete verification.',
                  ),
                  30.verticalSpace,
                  Pinput(
                    keyboardType: TextInputType.number,
                    controller: _pinController,
                    length: 4,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    defaultPinTheme: defaultPinTheme,
                    focusedPinTheme: focusedPinTheme,
                    errorPinTheme: errorPinTheme,
                  ),
                  const Spacer(),
                  PrimaryButton(
                    label: 'Submit',
                    isLoading: isLoading,
                    onPressed: _onPressed,
                  ),
                  10.verticalSpace,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
