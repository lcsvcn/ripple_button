import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:ripple_button/models/ripple_button_style.dart';

class CustomRippleButton extends StatelessWidget {
  final RippleButtonStyle style;

  /// [onPressed] expects a function that will be executed on button press.
  final Function() onPressed;

  final Text child;

  CustomRippleButton({
    required this.style,
    required this.onPressed,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final double maxWidth = MediaQuery.of(context).size.width;

    return ElevatedButton(
      onPressed: onPressed,
      child: child,
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
    );
  }
}
