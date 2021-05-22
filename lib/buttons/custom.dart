library custom_ripple_button;

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:ripple_button/ripple_button.dart';
import 'package:ripple_button/widget/animated_bouncing.dart';

part 'package:ripple_button/buttons/yellow.dart';
part 'package:ripple_button/buttons/amber.dart';
part 'package:ripple_button/buttons/blue_translucent.dart';
part 'package:ripple_button/buttons/white_translucent.dart';

class CustomRippleButton extends StatefulWidget {
  /// [child] expects a widget to be inside the button
  final Text child;

  /// [onPressed] expects a function that will be executed on button press.
  /// if value is [null] it will not be clickable,
  /// but disabled design will not be applied.
  /// To apply disabled design use [isEnabled] attribute
  final Function()? onPressed;

  /// [isEnabled] expects a [boolean]
  /// This will enable or disable button
  final bool isEnabled;

  /// [RippleButtonStyle] expects styles attributes for the ripple button.
  /// Note: Not all styles can be since is a preset button
  final RippleButtonStyle style;

  /// [RippleButtonColor] expects colors attributes for the ripple button.
  /// Note: Not all colors can be since is a preset button
  final RippleButtonColor color;

  /// [RippleButtonColor] expects border attributes for the ripple button.
  /// Note: Not all colors can be since is a preset button
  final RippleButtonBorder border;

  CustomRippleButton({
    required this.style,
    required this.isEnabled,
    required this.onPressed,
    required this.child,
    required this.color,
    required this.border,
  });

  @override
  _CustomRippleButtonState createState() => _CustomRippleButtonState();
}

class _CustomRippleButtonState extends State<CustomRippleButton>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final double _width =
        widget.style.width ?? MediaQuery.of(context).size.width;

    return AnimatedOpacity(
      opacity: widget.isEnabled ? 1.0 : 0.8,
      duration: Duration(milliseconds: 200),
      child: AnimatedBouncing(
        shouldAnimate: widget.isEnabled,
        child: ElevatedButton(
          onPressed: widget.isEnabled ? widget.onPressed : null,
          child: widget.child,
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all<Size>(Size(
              _width,
              widget.style.height,
            )),
            elevation: MaterialStateProperty.all<double>(
              widget.style.elevation,
            ),
            backgroundColor: MaterialStateProperty.all<Color>(
              widget.isEnabled
                  ? widget.color.background
                  : widget.color.disabled,
            ),
            foregroundColor: MaterialStateProperty.all<Color>(
              widget.color.foreground,
            ),
            shadowColor: MaterialStateProperty.all<Color>(
              widget.color.shadow,
            ),
            overlayColor: MaterialStateProperty.all<Color>(
              widget.color.overlay,
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: widget.border.radius,
                side: widget.border.side,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
