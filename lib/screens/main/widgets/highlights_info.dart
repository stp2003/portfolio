import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive/responsive_info.dart';
import 'package:portfolio/screens/main/widgets/animated_counter.dart';
import 'package:portfolio/screens/main/widgets/highlights.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Highlights(
                      counter: AnimatedCounter(
                        value: 55,
                        text: '+',
                      ),
                      lable: 'Github Projects',
                    ),
                    Highlights(
                      counter: AnimatedCounter(
                        value: 8,
                        text: '.98',
                        color: primaryColor,
                      ),
                      lable: 'CGPA',
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Highlights(
                      counter: AnimatedCounter(
                        value: 5,
                        text: '⭐',
                        color: Colors.cyan,
                      ),
                      lable: 'Java on Hackerrank',
                    ),
                    Highlights(
                      counter: AnimatedCounter(
                        value: 2,
                        text: '⭐',
                        color: Colors.orange,
                      ),
                      lable: 'CodeChef',
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Highlights(
                  counter: AnimatedCounter(
                    value: 35,
                    text: '+',
                  ),
                  lable: 'Github Projects',
                ),
                Highlights(
                  counter: AnimatedCounter(
                    value: 8,
                    text: '.98',
                    color: primaryColor,
                  ),
                  lable: 'CGPA',
                ),
                Highlights(
                  counter: AnimatedCounter(
                    value: 5,
                    text: '⭐',
                    color: Colors.cyan,
                  ),
                  lable: 'Java on Hackerrank',
                ),
                Highlights(
                  counter: AnimatedCounter(
                    value: 2,
                    text: '⭐',
                    color: Colors.orange,
                  ),
                  lable: 'CodeChef',
                ),
              ],
            ),
    );
  }
}
