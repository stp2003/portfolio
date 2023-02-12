import 'package:flutter/material.dart';
import 'package:portfolio/responsive/responsive_info.dart';

class Highlights extends StatelessWidget {
  const Highlights({
    Key? key,
    required this.counter,
    this.lable,
  }) : super(key: key);

  final Widget counter;
  final String? lable;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isMobileLarge(context)) counter,
        if (!Responsive.isMobileLarge(context)) const SizedBox(width: 10.0),
        if (!Responsive.isMobileLarge(context))
          Text(
            lable!,
            style: Theme.of(context).textTheme.subtitle1,
          ),
      ],
    );
  }
}
