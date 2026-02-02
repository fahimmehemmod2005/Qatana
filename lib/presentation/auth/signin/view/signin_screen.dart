import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qatana/core/constansts/app_colors.dart';
import 'package:qatana/core/route/route_manager.dart';
import 'package:qatana/presentation/widgets/gradient_container.dart';
import 'package:qatana/presentation/widgets/input_field.dart';
import 'package:qatana/presentation/widgets/primary_button.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  
  bool isLoading = false;
  final _userName = TextEditingController();
  final _password = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _userName.dispose();
    _password.dispose();
    super.dispose();
  }

  void _onPressed() async {
    setState(() {
      isLoading = true;
    });
    await Future.delayed(const Duration(seconds: 2));
    print('Email: ${_userName.text.trim()}');
    print('Password: ${_password.text.trim()}');
    Navigator.pushNamed(context, Routes.bottomNav);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text(
          'SignIn success.',
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
      body: GradientContainer(
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              30.verticalSpace,
              InputField(
                topLabel: 'Email or number',
                hintText: 'Enter your email or number',
                controller: _userName,
              ),
              20.verticalSpace,
              InputField(
                topLabel: 'Password',
                hintText: 'Enter your Password',
                controller: _password,
                obscureText: true,
                suffixIcon: Icons.visibility_outlined,
              ),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    activeColor: AppColors.primaryColor,
                    value: true,
                    onChanged: (value) {},
                  ),
                  Text('Remember me'),
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.forgotRoute);
                    },
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),
              30.verticalSpace,
              PrimaryButton(
                label: 'Sign In',
                isLoading: isLoading,
                onPressed: _onPressed,
              ),
              10.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
