part of custom_ripple_button;

class BlueTranslucentRippleButton extends StatelessWidget {
  /// [onPressed] expects a function that will be executed on button press.
  final Function()? onPressed;

  /// [text] expects a String that will be show inside the button
  final String text;

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

  BlueTranslucentRippleButton({
    required this.onPressed,
    required this.isEnabled,
    required this.text,
    required this.style,
    required this.color,
    required this.border,
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
          color: Color(0xFF003FA2),
          width: 2,
        ),
      ),
      style: RippleButtonStyle(
        width: style.width,
        height: style.height,
        elevation: style.elevation,
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: style.text ??
            TextStyle(
              color: Color(0xFF003FA2),
              fontSize: 16,
              fontWeight: FontWeight.w900,
            ),
      ),
    );
  }
}
