import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/screens/sidebar/widgets/my_area_info.dart';
import 'package:portfolio/screens/sidebar/widgets/socials.dart';

import 'cv.dart';
import 'my_coding_skills.dart';
import 'my_info.dart';
import 'my_knowledge.dart';
import 'my_skill.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const MyInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(
                defaultPadding,
              ),
              child: Column(
                children: const [
                  AreaInfo(
                    title: 'Residence',
                    text: 'India',
                  ),
                  AreaInfo(
                    title: 'State',
                    text: 'Uttar Pradesh',
                  ),
                  AreaInfo(
                    title: 'City',
                    text: 'Varanasi',
                  ),
                  Skills(),
                  SizedBox(height: 8.0),
                  Coding(),
                  MyKnowledge(),
                  Divider(),
                  SizedBox(height: 10.0),
                  CV(),
                  Socials()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
