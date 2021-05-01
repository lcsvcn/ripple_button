library ripple_button;

import 'package:flutter/material.dart';
import 'package:ripple_button/models/ripple_button_type.dart';
import 'package:ripple_button/models/ripple_button_style.dart';
import 'package:ripple_button/buttons/custom.dart';
import 'package:ripple_button/buttons/yellow.dart';
import 'package:ripple_button/buttons/blue_translucent.dart';
import 'package:ripple_button/buttons/white_translucent.dart';

class RippleButton extends StatelessWidget {
  /// [text] expects a [String]
  /// This will change the text inside the button
  final String text;

  /// [onPressed] expects a function that will be executed on button press.
  final Function() onPressed;

  /// [padding]  expects a [EdgeInsets]
  /// This will change the padding of button to other widgets
  ///
  ///  [default] value is EdgeInsets.zero (no padding)
  final EdgeInsets padding;

  /// [type] expects a [RippleButtonType]
  /// This will change the padding of the Ripple Button to other widgets
  ///  [default] value is [RippleButtonType.none] (no padding)
  final RippleButtonType type;

  /// [style] expects a [RippleButtonStyle]
  /// This will change the style form the Ripple Button
  /// Send values for your custom Ripple Button
  /// If you send any Ripple Button [type], this will not be used.
  /// [default] value is [RippleButtonStyle())]
  final RippleButtonStyle style;

  /// [style] expects a [TextStyle]
  /// This will change the style from the [text]
  /// [default] value is null (default text style)
  final TextStyle? textStyle;

  RippleButton({
    required this.text,
    required this.onPressed,
    this.textStyle,
    this.padding = EdgeInsets.zero,
    this.type = RippleButtonType.NONE,
    this.style = const RippleButtonStyle(),
  });

  _selectButtonType() {
    final textWidget = Text(
      text,
      style: textStyle,
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
