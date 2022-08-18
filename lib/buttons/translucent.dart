part of custom_ripple_button;

class TranslucentRippleButton extends StatelessWidget {
  /// [onPressed] expects a function that will be executed on button press.
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

  final Color background;

  /// [text] expects a String that will be show inside the button
  final String text;

  /// [Widget] expects an icon or image icon to show before the button text.
  /// Optional, if not provided, only shows text
  final Widget? icon;

  TranslucentRippleButton({
    required this.onPressed,
    required this.isEnabled,
    required this.text,
    required this.style,
    required this.color,
    required this.border,
    required this.background,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return CustomRippleButton(
      isEnabled: isEnabled,
      color: RippleButtonColor(
        background: Colors.transparent,
        foreground: color.foreground,
        shadow: color.shadow,
        disabled: color.disabled,
        overlay: color.overlay,
      ),
      border: RippleButtonBorder(
        radius: BorderRadius.circular(30),
        side: BorderSide(
          color: background,
          width: 2,
        ),
      ),
      style: RippleButtonStyle(
        width: style.width,
        height: style.height,
        elevation: style.elevation,
      ),
      onPressed: onPressed,
      text: Text(
        text,
        style: style.text ??
            TextStyle(
              color: background,
              fontSize: 16,
              fontWeight: FontWeight.w900,
            ),
      ),
      icon: icon,
    );
  }
}
