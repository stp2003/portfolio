// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/recommendations.dart';
import 'package:portfolio/responsive/responsive_info.dart';

class MyRecommendationCard extends StatelessWidget {
  const MyRecommendationCard({
    Key? key,
    required this.recommendation,
  }) : super(key: key);

  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Responsive.isMobile(context) ? 380.0 : 400.0,
      padding: const EdgeInsets.all(20.0),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            recommendation.name!,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          TextButton(
            onPressed: () {
              js.context.callMethod('open', [recommendation.link!]);
            },
            child: Text(
              recommendation.source!,
              style: const TextStyle(color: Colors.cyan),
            ),
          ),
          const SizedBox(height: 10.0),
          Text(
            recommendation.text!,
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(height: 1.5),
          ),
        ],
      ),
    );
  }
}
