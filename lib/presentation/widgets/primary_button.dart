import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String? label;
  final String? icon;
  final Color? textColor;
  final Color? iconColor;
  final Color? backgroundColor;
  final Color? borderColor;
  final VoidCallback? onPressed;
  final bool showGradient;
  final bool showIcon;
  final bool isLoading;

  const PrimaryButton({
    super.key,
    this.label,
    this.icon,
    this.textColor,
    this.iconColor,
    this.backgroundColor,
    this.borderColor,
    this.onPressed,
    this.showGradient = true,
    this.showIcon = false,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 1,
      ),
      child: Container(
        height: 48,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: borderColor ?? Colors.transparent,
            width: 1.5,
          ),
          color: showGradient ? null : backgroundColor,
          gradient: showGradient
              ? const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff7C5BFD),
                    Color(0xff24019C),
                  ],
                )
              : null,
        ),
        child: isLoading
            ? const SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Colors.white,
                ),
              )
            : Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (showIcon && icon != null) ...[
                    Image.asset(
                      icon!,
                      height: 20,
                      width: 20,
                      color: iconColor,
                    ),
                    const SizedBox(width: 8),
                  ],
                  Text(
                    label ?? '',
                    style: TextStyle(
                      color: textColor ?? Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
