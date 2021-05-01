import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:ripple_button/buttons/custom.dart';
import 'package:ripple_button/models/ripple_button_style.dart';

class YellowRippleButton extends StatelessWidget {
  /// [onPressed] expects a function that will be executed on button press.
  final Function() onPressed;

  final text;

  YellowRippleButton({
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return CustomRippleButton(
      style: RippleButtonStyle(),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
