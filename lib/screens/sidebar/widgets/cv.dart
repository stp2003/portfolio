import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CV extends StatelessWidget {
  const CV({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        js.context.callMethod('open', [
          'https://drive.google.com/file/d/1HBp8DgnX7Ej8XZA1GDg1_jJYNQmCVaC8/view?usp=share_link'
        ]);
      },
      child: FittedBox(
        child: Row(
          children: [
            Text(
              'DOWNLOAD CV',
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyText1!.color,
              ),
            ),
            const SizedBox(width: 10.0),
            SvgPicture.asset('assets/icons/download.svg'),
          ],
        ),
      ),
    );
  }
}
