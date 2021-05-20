part of ripple_button;

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

  /// [width] expects a [double]
  /// This will change the width to the ripple button
  /// [default] value is screen size width
  final double? width;

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
    this.width,
    this.elevation = 0.0,
    this.border = const RippleButtonBorder(),
    this.text,
  });
}

class RippleButtonBorder {
  /// [side] expects a [BorderSide]
  /// Use this to add a border to the ripple button
  final BorderSide side;

  /// [side] expects a [BorderRadius]
  /// Use this to customize ripple button corners
  /// This can be used to create rounded button corners
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
  /// This will change the foreground color from the button
  final Color foreground;

  /// [shadow] expects a [Color]
  /// This will change the shadow color from the button
  final Color shadow;

  /// [disabled] expects a [Color]
  /// This will change the color from the button when it is disabled
  final Color disabled;

  const RippleButtonColor({
    this.background = Colors.amber,
    this.foreground = Colors.black,
    this.shadow = Colors.black,
    this.disabled = Colors.grey,
  });
}
