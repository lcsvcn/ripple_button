part of ripple_button;

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

  /// [overlay] expects a [Color]
  /// This will change the color on mouse over
  final Color overlay;

  const RippleButtonColor({
    this.background = Colors.amber,
    this.foreground = Colors.black,
    this.shadow = Colors.black,
    this.disabled = Colors.grey,
    this.overlay = Colors.white24,
  });
}
