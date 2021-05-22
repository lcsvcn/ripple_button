part of ripple_button;

class RippleButtonStyle {
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

  /// [text] expects a [TextStyle]
  /// This will change the style from the [text] inside the ripple button
  /// [default] value is null (default text style)
  final TextStyle? text;

  const RippleButtonStyle({
    this.height = 40,
    this.width,
    this.elevation = 0.0,
    this.text,
  });
}