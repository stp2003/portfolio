import 'package:flutter/material.dart';
import 'package:portfolio/models/projects_info.dart';
import 'package:portfolio/screens/main/widgets/project_card.dart';

class MyProjectsDetails extends StatelessWidget {
  const MyProjectsDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Projects',
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: 20.0),

        //* grid to show projects ->
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: demoProjects.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.3,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 20.0,
          ),
          itemBuilder: (context, index) => ProjectCard(
            project: demoProjects[index],
            
          ),
        ),
        const SizedBox(height: 20.0),
      ],
    );
  }
}

