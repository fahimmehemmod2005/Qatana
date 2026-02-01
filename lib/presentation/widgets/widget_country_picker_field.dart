import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';


class WidgetCountryPickerField extends StatelessWidget {
  final String? hintText;
  final String? topLabel;
  final TextEditingController? controller;
  final String? Function(PhoneNumber?)? validator;

  const WidgetCountryPickerField({
    super.key,
     this.hintText,
     this.topLabel,
    this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (topLabel != null)
          Text(
            topLabel!,
            style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400)
          ),
        SizedBox(height: 10.0),
        IntlPhoneField(
          initialCountryCode: 'BD',
          showCountryFlag: false,
          cursorColor: Colors.white,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: controller,
          validator: validator,
          decoration: InputDecoration(

            // Normal border
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: Color(0xff7C5BFD),
                width: 1.5
              ),
            ),

            // Focused border (selected / active)
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: Color(0xff7C5BFD),
                width: 1.5,
              ),
            ),

            // Optional: Error border
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: Colors.red,
                width: 1.5,
              ),
            ),

            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: Colors.red,
                width: 1.5,
              ),
            ),

            hintText: hintText,
            hintStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff4A4C56)),
            errorStyle: const TextStyle(
              color: Colors.red,
              fontSize: 12,
              height: 1.2,
            ),
            errorMaxLines: 2,
          ),
        ),
      ],
    );
  }
}
