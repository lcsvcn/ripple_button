library ripple_button;

import 'package:flutter/material.dart';
import 'package:ripple_button/buttons/custom.dart';

part 'package:ripple_button/models/ripple_button_type.dart';
part 'package:ripple_button/models/ripple_button_style.dart';
part 'package:ripple_button/models/ripple_button_color.dart';
part 'package:ripple_button/models/ripple_button_border.dart';

class RippleButton extends StatelessWidget {
  RippleButton(
    this.text, {
    this.onPressed,
    this.isEnabled = true,
    this.padding = EdgeInsets.zero,
    this.heroTag,
    this.type = RippleButtonType.NONE,
    this.style = const RippleButtonStyle(),
    this.color = const RippleButtonColor(),
    this.border = const RippleButtonBorder(),
  });

  /// [onPressed] expects a function that will be executed on button press.
  final Function()? onPressed;

  /// [color] expects a [RippleButtonBorder]
  /// This will change the border from the Ripple Button
  /// Send values for your custom Ripple Button
  /// If you send any Ripple Button [type], this may not be used.
  /// [default] value is [RippleButtonBorder())]
  final RippleButtonBorder border;

  /// [color] expects a [RippleButtonColor]
  /// This will change the color from the Ripple Button
  /// Send values for your custom Ripple Button
  /// If you send any Ripple Button [type], this may not be used.
  /// [default] value is [RippleButtonColor())]
  final RippleButtonColor color;

  /// [heroTag] expects a [String]
  /// This will add a hero tag to the ripple button
  /// Use this to configure flutter hero animations
  /// https://flutter.dev/docs/development/ui/animations/hero-animations
  final String? heroTag;

  /// [isEnabled] expects a [boolean]
  /// This will enable or disable button
  final bool isEnabled;

  /// [padding]  expects a [EdgeInsets]
  /// This will change the padding of button to other widgets
  ///
  ///  [default] value is [EdgeInsets.zero] (no padding)
  final EdgeInsets padding;

  /// [style] expects a [RippleButtonStyle]
  /// This will change the style from the Ripple Button
  /// Send values for your custom Ripple Button
  /// If you send any Ripple Button [type], this may not be used.
  /// [default] value is [RippleButtonStyle())]
  final RippleButtonStyle style;

  /// [text] expects a [String]
  /// This will change the text inside the button
  final String text;

  /// This are pre-config designs for the ripple button
  /// This is optional, if not set
  /// The widget will use your design for the button
  ///  [default] value is [RippleButtonType.none] (set your own custom design)
  final RippleButtonType type;

  _buildButtonFromType() {
    final textWidget = Text(
      text,
      style: style.text,
    );

    switch (type) {
      case RippleButtonType.BLUE_TRANSLUCENT:
        return TranslucentRippleButton(
          onPressed: onPressed,
          isEnabled: isEnabled,
          text: text,
          style: style,
          color: color,
          border: border,
          background: Color(0xFF003FA2),
        );

      case RippleButtonType.WHITE_TRANSLUCENT:
        return TranslucentRippleButton(
          onPressed: onPressed,
          isEnabled: isEnabled,
          text: text,
          style: style,
          color: color,
          border: border,
          background: Colors.white,
        );

      case RippleButtonType.YELLOW:
        return RoundCornerRippleButton(
          onPressed: onPressed,
          isEnabled: isEnabled,
          text: text,
          style: style,
          color: color,
          border: border,
          background: Color(0xFFFFC800),
        );

      case RippleButtonType.AMBER:
        return RoundCornerRippleButton(
          onPressed: onPressed,
          isEnabled: isEnabled,
          text: text,
          style: style,
          color: color,
          border: border,
          background: Color(0xFFFFB300),
        );

      case RippleButtonType.PINK:
        return RoundCornerRippleButton(
          onPressed: onPressed,
          isEnabled: isEnabled,
          text: text,
          style: style,
          color: color,
          border: border,
          background: Color(0xFFFF1493),
        );

      // https://brandcolors.net/b/whatsapp
      case RippleButtonType.GREEN_LIGHT_WHATSAPP:
        return RoundCornerRippleButton(
          onPressed: onPressed,
          isEnabled: isEnabled,
          text: text,
          style: style,
          color: color,
          border: border,
          background: Color(0xFF25d366),
        );

      case RippleButtonType.GREEN_DARK_WHATSAPP:
        return RoundCornerRippleButton(
          onPressed: onPressed,
          isEnabled: isEnabled,
          text: text,
          style: style,
          color: color,
          border: border,
          background: Color(0xFF128c7e),
        );

      // https://brandcolors.net/b/google
      case RippleButtonType.RED_GMAIL:
        return RoundCornerRippleButton(
          onPressed: onPressed,
          isEnabled: isEnabled,
          text: text,
          style: style,
          color: color,
          border: border,
          background: Color(0xFFEA4335),
        );

      // https://brandcolors.net/b/telegram
      case RippleButtonType.BLUE_TELEGRAM:
        return RoundCornerRippleButton(
          onPressed: onPressed,
          isEnabled: isEnabled,
          text: text,
          style: style,
          color: color,
          border: border,
          background: Color(0xFF0088CC),
        );

      default:
        return CustomRippleButton(
          child: textWidget,
          onPressed: onPressed,
          isEnabled: isEnabled,
          style: style,
          color: color,
          border: border,
        );
    }
  }

  _buildHeroTag({required Widget child}) {
    if (heroTag == null) return child;
    return Hero(
      tag: heroTag!,
      child: _buildButtonFromType(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: _buildHeroTag(
        child: _buildButtonFromType(),
      ),
    );
  }
}
