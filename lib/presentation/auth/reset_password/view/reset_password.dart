import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qatana/presentation/widgets/gradient_container.dart';
import 'package:qatana/presentation/widgets/primary_button.dart';
import 'package:qatana/presentation/widgets/widget_title_subtitle.dart';

import '../../../../core/route/route_manager.dart';
import '../../../widgets/input_field.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool isLoading = false;
  final _password = TextEditingController();
  final _confirmPass = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    _password.dispose();
    _confirmPass.dispose();
    super.dispose();
  }
  void _onPressed() async {
    setState(() {
      isLoading = true;
    });
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushNamed(context, Routes.registrationRoute);
    print('Password: ${_password.text.trim()}');
    print('Confirm Pass: ${_confirmPass.text.trim()}');
    Navigator.pushNamed(context, Routes.registrationRoute);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text(
          'Password Reset Successful',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        backgroundColor: const Color(0xff7C5BFD),
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      ),
    );
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
        title: Text('Reset Password'),
        backgroundColor: Colors.transparent,
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
                        title: 'Set a New password',
                        subTitle: 'Secure your account by choosing a strong new password.',
                      ),
                      50.verticalSpace,
                      InputField(
                        topLabel: 'Password',
                        hintText: 'Enter your password',
                        controller: _password,
                        obscureText: true,
                        suffixIcon: Icons.visibility_outlined
                      ),
                     20.verticalSpace,
                      InputField(
                        topLabel: 'Confirm password',
                        hintText: 'Re-type your password',
                          controller: _confirmPass,
                          obscureText: true,
                          suffixIcon: Icons.visibility_outlined
                      ),
                      const Spacer(),
                      PrimaryButton(
                        label: 'Set new password',
                        isLoading: isLoading,
                        onPressed: _onPressed,
                      ),
                      10.verticalSpace,
                    ]
                )
            ),
          ),
        ),
      ),
    );
  }
}
