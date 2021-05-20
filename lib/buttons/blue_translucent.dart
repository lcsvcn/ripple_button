part of custom_ripple_button;

class BlueTranslucentRippleButton extends StatelessWidget {
  /// [onPressed] expects a function that will be executed on button press.
  final Function()? onPressed;

  /// [text] expects a String that will be show inside the button
  final String text;

  /// [isEnabled] expects a [boolean]
  /// This will enable or disable button
  final bool isEnabled;

  /// [RippleButtonStyle] expects the styles of the button.
  /// Note: Not all styles can be since is a preset button
  final RippleButtonStyle style;

  BlueTranslucentRippleButton({
    required this.onPressed,
    required this.isEnabled,
    required this.text,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return CustomRippleButton(
      isEnabled: isEnabled,
      style: RippleButtonStyle(
        width: style.width,
        height: style.height,
        elevation: style.elevation,
        color: RippleButtonColor(
          background: Colors.transparent,
          foreground: style.color.foreground,
          shadow: style.color.shadow,
          disabled: style.color.disabled,
          overlay: style.color.overlay,
        ),
        border: RippleButtonBorder(
          radius: BorderRadius.circular(30),
          side: BorderSide(
            color: Color(0xFF003FA2),
            width: 2,
          ),
        ),
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
