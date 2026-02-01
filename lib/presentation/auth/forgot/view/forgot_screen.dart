import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qatana/core/route/route_manager.dart';
import 'package:qatana/presentation/widgets/gradient_container.dart';
import 'package:qatana/presentation/widgets/primary_button.dart';
import 'package:qatana/presentation/widgets/widget_title_subtitle.dart';

import '../../../widgets/input_field.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  bool isLoading = false;
  final _userName = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _userName.dispose();
    super.dispose();
  }

  void _onPressed() async {
    setState(() {
      isLoading = true;
    });
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushNamed(context, Routes.verificationRoute);
    print('Email: ${_userName.text.trim()}');
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text('Forgot Password'),
      ),
      body: GradientContainer(
        child: SafeArea(
            child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    30.verticalSpace,
                    WidgetTitleSubtitle(
                      title: 'Email Address',
                      subTitle: "Enter your email, and we'll guide you to reset your password.",
                    ),
                    50.verticalSpace,
                    InputField(
                      topLabel: "Email",
                      hintText: "Enter your email",
                      maxLine: 1,
                      controller: _userName,
                    ),
                    const Spacer(),
                    PrimaryButton(
                      label: 'Continue',
                      isLoading: isLoading,
                      onPressed: _onPressed,
                    ),
                    10.verticalSpace,
                  ],
                ),
              ),
            )
        ),
      ),
    );
  }
}
