library custom_ripple_button;

import 'package:flutter/material.dart';
import 'package:ripple_button/ripple_button.dart';
import 'package:ripple_button/widget/animated_bouncing.dart';

part 'package:ripple_button/buttons/translucent.dart';
part 'package:ripple_button/buttons/round_corner.dart';

class CustomRippleButton extends StatefulWidget {
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

  /// [text] expects a widget to be inside the button
  final Text text;

  /// [Widget] expects an icon or image icon to show before the button text.
  /// Optional, if not provided, only shows text
  final Widget? icon;

  CustomRippleButton({
    required this.style,
    required this.isEnabled,
    required this.onPressed,
    required this.text,
    required this.color,
    required this.border,
    this.icon,
  });

  @override
  _CustomRippleButtonState createState() => _CustomRippleButtonState();
}

class _CustomRippleButtonState extends State<CustomRippleButton>
    with SingleTickerProviderStateMixin {
  Widget _buildTextButton() {
    final double _width =
        widget.style.width ?? MediaQuery.of(context).size.width;

    return ElevatedButton(
      onPressed: widget.isEnabled ? widget.onPressed : null,
      child: widget.text,
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all<Size>(Size(
          _width,
          widget.style.height,
        )),
        elevation: MaterialStateProperty.all<double>(
          widget.style.elevation,
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          widget.isEnabled ? widget.color.background : widget.color.disabled,
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
    );
  }

  Widget _buildIconButton() {
    final double _width =
        widget.style.width ?? MediaQuery.of(context).size.width;

    return ElevatedButton.icon(
      onPressed: widget.isEnabled ? widget.onPressed : null,
      icon: widget.icon!,
      label: widget.text,
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all<Size>(Size(
          _width,
          widget.style.height,
        )),
        elevation: MaterialStateProperty.all<double>(
          widget.style.elevation,
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          widget.isEnabled ? widget.color.background : widget.color.disabled,
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: widget.isEnabled ? 1.0 : 0.8,
      duration: Duration(milliseconds: 200),
      child: AnimatedBouncing(
        shouldAnimate: widget.isEnabled,
        child: (widget.icon == null) ? _buildTextButton() : _buildIconButton(),
      ),
    );
  }
}
