import 'package:flutter/material.dart';

class RippleButtonStyle {
  /// [color] expects a [RippleButtonColor]
  /// This will change the color to the ripple button
  final RippleButtonColor color;

  /// [elevation] expects a [double]
  /// This will change the elevation to the ripple button
  /// [default] value is no border
  final double elevation;

  /// [height] expects a [double]
  /// This will change the height to the ripple button
  /// [default] value is no border
  final double height;

  /// [border] expects a [RippleButtonBorder]
  /// This will change the style from the [text] inside the ripple button
  /// [default] value is no border
  final RippleButtonBorder border;

  /// [text] expects a [TextStyle]
  /// This will change the style from the [text] inside the ripple button
  /// [default] value is null (default text style)
  final TextStyle? text;

  const RippleButtonStyle({
    this.color = const RippleButtonColor(),
    this.height = 40,
    this.elevation = 0.0,
    this.border = const RippleButtonBorder(),
    this.text,
  });
}

class RippleButtonBorder {
  final BorderSide side;
  final BorderRadius radius;

  const RippleButtonBorder({
    this.side = BorderSide.none,
    this.radius = BorderRadius.zero,
  });
}

class RippleButtonColor {
  /// [background] expects a [Color]
  /// This will change the background color from the button
  final Color background;

  /// [foreground] expects a [Color]
  /// This will change the background color from the button
  final Color foreground;

  /// [shadow] expects a [Color]
  /// This will change the shadow color from the button
  final Color shadow;

  const RippleButtonColor({
    this.background = Colors.amber,
    this.foreground = Colors.black,
    this.shadow = Colors.black,
  });
}
