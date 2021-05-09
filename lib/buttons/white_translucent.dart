part of custom_ripple_button;

class WhiteTranslucentRippleButton extends StatelessWidget {
  final Function() onPressed;

  final String text;

  final RippleButtonStyle style;

  WhiteTranslucentRippleButton({
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
        elevation: style.elevation,
        color: RippleButtonColor(
          background: Colors.transparent,
          foreground: style.color.foreground,
          shadow: style.color.shadow,
        ),
        border: RippleButtonBorder(
          radius: BorderRadius.circular(30),
          side: BorderSide(
            color: Colors.white,
            width: 2,
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: style.text ?? TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
