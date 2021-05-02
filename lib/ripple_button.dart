library ripple_button;

import 'package:flutter/material.dart';
import 'package:ripple_button/models/ripple_button_style.dart';
import 'package:ripple_button/buttons/custom.dart';
import 'package:ripple_button/buttons/yellow.dart';
import 'package:ripple_button/buttons/blue_translucent.dart';
import 'package:ripple_button/buttons/white_translucent.dart';

part 'package:ripple_button/models/ripple_button_type.dart';

class RippleButton extends StatelessWidget {
  /// [text] expects a [String]
  /// This will change the text inside the button
  final String text;

  /// [onPressed] expects a function that will be executed on button press.
  final Function() onPressed;

  /// [padding]  expects a [EdgeInsets]
  /// This will change the padding of button to other widgets
  ///
  ///  [default] value is [EdgeInsets.zero] (no padding)
  final EdgeInsets padding;

  /// This are pre-config designs for the ripple button
  /// This is optional, if not set
  /// The widget will use your design for the button
  ///  [default] value is [RippleButtonType.none] (set your own custom design)
  final RippleButtonType type;

  /// [style] expects a [RippleButtonStyle]
  /// This will change the style form the Ripple Button
  /// Send values for your custom Ripple Button
  /// If you send any Ripple Button [type], this will not be used.
  /// [default] value is [RippleButtonStyle())]
  final RippleButtonStyle style;

  RippleButton({
    required this.text,
    required this.onPressed,
    this.padding = EdgeInsets.zero,
    this.type = RippleButtonType.NONE,
    this.style = const RippleButtonStyle(),
  });

  _selectButtonType() {
    final textWidget = Text(
      text,
      style: RippleButtonStyle().text,
    );

    switch (type) {
      case RippleButtonType.BLUE_TRANSLUCENT:
        return BlueTranslucentRippleButton(
          onPressed: onPressed,
          text: text,
        );

      case RippleButtonType.WHITE_TRANSLUCENT:
        return WhiteTranslucentRippleButton(
          onPressed: onPressed,
          text: text,
        );

      case RippleButtonType.YELLOW:
        return YellowRippleButton(
          onPressed: onPressed,
          text: text,
        );

      default:
        return CustomRippleButton(
          style: style,
          onPressed: onPressed,
          child: textWidget,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: _selectButtonType(),
    );
  }
}
