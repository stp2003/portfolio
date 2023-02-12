import 'package:flutter/material.dart';

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
        counter,
        const SizedBox(width: 10.0),
        Text(
          lable!,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        
      ],
    );
  }
}
