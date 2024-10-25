// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element

import 'package:flutter/material.dart';

enum ButtonVariant { primary, secondary, tertiary }

class CustomButton extends StatelessWidget {
  final double borderRadius;
  final String text;
  final IconData leftIcon;
  final IconData rightIcon;
  final ButtonVariant variant;
  final bool showLeftIcon;
  final bool showRightIcon;
  final double width;
  final double height;
  final TextStyle textStyle;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    this.borderRadius = 16,
    this.text = 'Button',
    this.leftIcon = Icons.star,
    this.rightIcon = Icons.arrow_forward,
    this.variant = ButtonVariant.primary,
    this.showLeftIcon = true,
    this.showRightIcon = true,
    this.width = 380,
    this.height = 58,
    required this.onPressed,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        label: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (showLeftIcon) ...[
              Icon(
                leftIcon,
                color: _getIconColor(context),
              ),
              SizedBox(width: 12),
            ],
            Text(
              text,
              style: textStyle,
            ),
            if (showRightIcon) ...[
              SizedBox(width: 12),
              Icon(
                rightIcon,
                color: _getIconColor(context),
              ),
            ],
          ],
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: _getBackgroundColor(context),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      ),
    );
  }

  Color _getBackgroundColor(BuildContext context) {
    switch (variant) {
      case ButtonVariant.primary:
        return Theme.of(context).primaryColor;
      case ButtonVariant.secondary:
        return Color(0xFFE6F9ED);
      case ButtonVariant.tertiary:
        return Color(0xFF35383F);
    }
  }

  Color _getTextColor(BuildContext context) {
    switch (variant) {
      case ButtonVariant.primary:
      case ButtonVariant.tertiary:
        return Colors.white;
      case ButtonVariant.secondary:
        return Theme.of(context).primaryColor;
    }
  }

  Color _getIconColor(BuildContext context) {
    switch (variant) {
      case ButtonVariant.primary:
      case ButtonVariant.tertiary:
        return Colors.white;
      case ButtonVariant.secondary:
        return Theme.of(context).primaryColor;
    }
  }
}
