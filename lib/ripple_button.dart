library ripple_button;

import 'package:flutter/material.dart';
import 'models/ripple_button_type.dart';
import 'models/ripple_button_style.dart';

class RippleButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final EdgeInsets padding;
  final RippleButtonType type;
  final RippleButtonStyle style;
  final TextStyle? textStyle;

  RippleButton({
    required this.text,
    required this.onPressed,
    this.textStyle,
    this.padding = EdgeInsets.zero,
    this.type = RippleButtonType.NONE,
    this.style = const RippleButtonStyle(),
  });

  @override
  Widget build(BuildContext context) {
    final double maxWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: padding,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: textStyle,
        ),
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all<Size>(Size(
            maxWidth,
            style.height,
          )),
          elevation: MaterialStateProperty.all<double>(
            style.elevation,
          ),
          backgroundColor: MaterialStateProperty.all<Color>(
            style.color.background,
          ),
          foregroundColor: MaterialStateProperty.all<Color>(
            style.color.foreground,
          ),
          shadowColor: MaterialStateProperty.all<Color>(
            style.color.shadow,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: style.border.radius,
              side: style.border.side,
            ),
          ),
        ),
      ),
    );
  }
}
