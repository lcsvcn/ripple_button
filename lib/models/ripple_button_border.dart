part of ripple_button;


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