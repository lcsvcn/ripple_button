import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:ripple_button/buttons/custom.dart';
import 'package:ripple_button/models/ripple_button_style.dart';

class WhiteTranslucentRippleButton extends StatelessWidget {
  /// [onPressed] expects a function that will be executed on button press.
  final Function() onPressed;

  final String text;

  WhiteTranslucentRippleButton({
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return CustomRippleButton(
        style: RippleButtonStyle(),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ));
  }
}
