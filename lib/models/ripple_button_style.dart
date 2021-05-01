import 'package:flutter/material.dart';

class RippleButtonStyle {
  final RippleButtonColor color;
  final double elevation;
  final double height;
  final RippleButtonBorder border;

  const RippleButtonStyle({
    this.color = const RippleButtonColor(),
    this.height = 40,
    this.elevation = 0.0,
    this.border = const RippleButtonBorder(),
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
  final Color background;
  final Color foreground;
  final Color shadow;

  const RippleButtonColor({
    this.background = Colors.amber,
    this.foreground = Colors.black,
    this.shadow = Colors.black,
  });
}
