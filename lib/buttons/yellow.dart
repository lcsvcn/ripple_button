part of custom_ripple_button;

class YellowRippleButton extends StatelessWidget {
  /// [onPressed] expects a function that will be executed on button press.
  final Function() onPressed;

  final text;

  final RippleButtonStyle style;

  YellowRippleButton({
    required this.onPressed,
    required this.text,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return CustomRippleButton(
      style: RippleButtonStyle(
        width: style.width,
        height: style.height,
        color: RippleButtonColor(
          background: Color(0xFFFFC800),
          foreground: style.color.foreground,
          shadow: style.color.shadow,
        ),
        border: RippleButtonBorder(
          radius: BorderRadius.circular(30),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
