import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qatana/core/constansts/app_colors.dart';
import 'package:qatana/core/route/route_manager.dart';
import 'package:qatana/presentation/widgets/gradient_container.dart';
import 'package:qatana/presentation/widgets/input_field.dart';
import 'package:qatana/presentation/widgets/primary_button.dart';
import 'package:qatana/presentation/widgets/widget_country_picker_field.dart';



class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  String? selected;

  bool isLoading = false;
  final _name = TextEditingController();
  final _userName = TextEditingController();
  final _number = TextEditingController();
  final _password = TextEditingController();
  final _confirmPass = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _name.dispose();
    _userName.dispose();
    _number.dispose();
    _password.dispose();
    _confirmPass.dispose();
    super.dispose();
  }

  void _onPressed() async {
    setState(() {
      isLoading = true;
    });
    await Future.delayed(const Duration(seconds: 2));
    print('Name: ${_name.text.trim()}');
    print('Email: ${_userName.text.trim()}');
    print('Number: ${_number.text.trim()}');
    print('Password: ${_password.text.trim()}');
    print('Confirm Pass: ${_confirmPass.text.trim()}');
    print('Selected Role: ${selected ?? "None".toString()}');
    Navigator.pushNamed(context, Routes.subscriptionRoute);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text(
          'SignUp success.',
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
                topLabel: 'Full Name',
                hintText: 'Enter your name',
                controller: _name,
              ),
              20.verticalSpace,
              InputField(
                topLabel: 'Email',
                hintText: 'Enter your email',
                controller: _userName,
              ),
              20.verticalSpace,
              WidgetCountryPickerField(
                topLabel: 'Phone number',
                hintText: 'Enter your number',
                controller: _number,
              ),
              5.verticalSpace,
              InputField(
                topLabel: 'Password',
                hintText: 'Enter your Password',
                controller: _password,
                obscureText: true,
                suffixIcon: Icons.visibility_outlined,
              ),
              20.verticalSpace,
              InputField(
                topLabel: 'Confirm password',
                hintText: 'confirm your password',
                controller: _confirmPass,
                obscureText: true,
                suffixIcon: Icons.visibility_outlined,
              ),
              20.verticalSpace,
              Row(
                children: [
                  Expanded(child: _role(role: 'Creator')),
                  15.horizontalSpace,
                  Expanded(child: _role(role: 'Fans')),
                ],
              ),
              20.verticalSpace,
              PrimaryButton(
                label: 'Sign Up',
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
  Widget _role ({required String role}){
    bool isSelected = selected == role;
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = role;
        });
      },
      child: Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? AppColors.primaryColor : Colors.grey,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            role,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
