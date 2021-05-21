import 'package:flutter/material.dart';

class AnimatedBouncing extends StatefulWidget {
  /// [child] widget to be animated as bouncing
  final Widget child;

  /// [scale] Scale factor
  ///  < 0 => the bouncing will be reversed and widget will grow
  ///    1 => default value
  ///  > 1 => increase the bouncing effect
  final double scale;

  /// [duration] is the time duration of the boucing effect
  final Duration duration;

  /// [shouldAnimate] is when it should animate button
  final bool shouldAnimate;

  const AnimatedBouncing({
    required this.child,
    this.scale = 1.0,
    this.shouldAnimate = false,
    this.duration = const Duration(milliseconds: 200),
  }) : assert(scale >= 0.0 && scale <= 1.0);

  @override
  _AnimatedBouncingState createState() => _AnimatedBouncingState();
}

class _AnimatedBouncingState extends State<AnimatedBouncing>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _shouldAnimate = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      value: widget.scale,
      duration: widget.duration,
      lowerBound: 0.0,
      upperBound: 0.1,
      vsync: this,
    );
  }

  @override
  void didUpdateWidget(AnimatedBouncing oldWidget) {
    if (oldWidget.shouldAnimate != widget.shouldAnimate) {
      setState(() {
        _shouldAnimate = true;
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_shouldAnimate) {
      return widget.child;
    }

    final animation = _controller
      ..forward()
          .whenComplete(
            () => _controller..reverse(),
          )
          .whenComplete(
            () => setState(() {
              _shouldAnimate = false;
            }),
          );

    return AnimatedBuilder(
      animation: animation,
      child: widget.child,
      builder: (context, child) {
        return Transform.scale(
          scale: 1 - animation.value,
          child: child,
        );
      },
    );
  }
}
