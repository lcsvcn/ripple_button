part of custom_ripple_button;

class BlueTranslucentRippleButton extends StatelessWidget {
  /// [onPressed] expects a function that will be executed on button press.
  final Function() onPressed;

  final String text;

  BlueTranslucentRippleButton({
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return CustomRippleButton(
      style: RippleButtonStyle(
        color: RippleButtonColor(
          background: Colors.transparent,
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
        style: TextStyle(
          color: Color(0xFF003FA2),
          fontSize: 16,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
