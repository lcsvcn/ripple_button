part of custom_ripple_button;

class AmberRippleButton extends StatelessWidget {
  /// [onPressed] expects a function that will be executed on button press.
  final Function()? onPressed;

  /// [isEnabled] expects a [boolean]
  /// This will enable or disable button
  final bool isEnabled;

  /// [text] expects a String that will be show inside the button
  final String text;

  /// [RippleButtonStyle] expects the styles of the button.
  /// Note: Not all styles can be since is a preset button
  final RippleButtonStyle style;

  AmberRippleButton({
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
          background: Color(0xFFFFB300),
          foreground: style.color.foreground,
          shadow: style.color.shadow,
          disabled: style.color.disabled,
          overlay: style.color.overlay,
        ),
        border: RippleButtonBorder(
          radius: BorderRadius.circular(30),
          side: style.border.side,
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: style.text ??
            TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w900,
            ),
      ),
    );
  }
}
