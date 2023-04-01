import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/projects_info.dart';
import 'package:portfolio/responsive/responsive_info.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
    this.color,
  }) : super(key: key);

  final ProjectInfo project;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        color: secondaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              project.title!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            const SizedBox(height: 20.0),
            Text(
              project.description!,
              maxLines: Responsive.isMobileLarge(context)
                  ? project.description!.length
                  : project.description!.length,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                height: 1.5,
              ),
            ),
            const SizedBox(height: 20.0),

            //* button to github link ->
            TextButton(
              onPressed: () async {
                // js.context.callMethod('open', [project.link!]);

                var url = project.link;
                final uri = Uri.parse(url!);
                if (await canLaunchUrl(uri)) {
                  await launchUrl(uri);
                } else {
                  // can't launch url
                }
              },
              child: Text(
                'Know More >>',
                style: TextStyle(
                  color: project.buttonColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
