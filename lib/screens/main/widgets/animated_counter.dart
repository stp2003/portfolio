import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class AnimatedCounter extends StatelessWidget {
  const AnimatedCounter({
    Key? key,
    required this.value,
    this.text,
    this.color,
  }) : super(key: key);

  final int value;
  final String? text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: IntTween(begin: 0, end: value),
      duration: const Duration(seconds: 3),
      builder: (context, value, child) => Text(
        '$value$text',
        style: Theme.of(context).textTheme.headline6!.copyWith(
              color: color ?? ternaryColor,
            ),
      ),
    );
  }
}
