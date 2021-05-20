library custom_ripple_button;

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:ripple_button/ripple_button.dart';

part 'package:ripple_button/buttons/yellow.dart';
part 'package:ripple_button/buttons/amber.dart';
part 'package:ripple_button/buttons/blue_translucent.dart';
part 'package:ripple_button/buttons/white_translucent.dart';

class CustomRippleButton extends StatelessWidget {
  /// [RippleButtonStyle] expects the styles of the button.
  final RippleButtonStyle style;

  /// [onPressed] expects a function that will be executed on button press.
  final Function() onPressed;

  /// [isEnabled] expects a [boolean]
  /// This will enable or disable button
  final bool isEnabled;

  /// [child] expects a widget to be inside the button
  final Text child;

  CustomRippleButton({
    required this.style,
    required this.isEnabled,
    required this.onPressed,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final double _width = style.width ?? MediaQuery.of(context).size.width;

    return AnimatedOpacity(
      opacity: isEnabled ? 1.0 : 0.5,
      duration: Duration(milliseconds: 200),
      child: ElevatedButton(
        onPressed: isEnabled ? onPressed : null,
        child: child,
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all<Size>(Size(
            _width,
            style.height,
          )),
          elevation: MaterialStateProperty.all<double>(
            style.elevation,
          ),
          backgroundColor: MaterialStateProperty.all<Color>(
            isEnabled ? style.color.background : style.color.disabled,
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
