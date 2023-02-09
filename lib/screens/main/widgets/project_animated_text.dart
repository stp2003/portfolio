import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'flutter_coded_text.dart';

class ProjectsAnimatedText extends StatelessWidget {
  const ProjectsAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          const FlutterCodedText(),
          const SizedBox(width: 10.0),
          const Text('I build '),
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText(
                'Complete Social Media App.',
                speed: const Duration(milliseconds: 60),
              ),
              TyperAnimatedText(
                'Online Meeting App.',
                speed: const Duration(milliseconds: 60),
              ),
              TyperAnimatedText(
                'Flutter with ML projects.',
                speed: const Duration(milliseconds: 60),
              ),
              TyperAnimatedText(
                'Text Editor App.',
                speed: const Duration(milliseconds: 60),
              ),
              TyperAnimatedText(
                'Responsive web and mobile app.',
                speed: const Duration(milliseconds: 60),
              ),
            ],
          ),
          const SizedBox(width: 10.0),
          const FlutterCodedText(),
        ],
      ),
    );
  }
}
