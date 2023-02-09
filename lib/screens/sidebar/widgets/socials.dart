import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Socials extends StatelessWidget {
  const Socials({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      color: const Color(0xFF24242E),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {
              js.context.callMethod(
                  'open', ['https://www.linkedin.com/in/shashwat-shandilya/']);
            },
            icon: SvgPicture.asset('assets/icons/linkedin.svg'),
          ),
          IconButton(
            onPressed: () {
              js.context.callMethod('open', ['https://github.com/stp2003']);
            },
            icon: SvgPicture.asset('assets/icons/github.svg'),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/twitter.svg'),
          ),
        ],
      ),
    );
  }
}
