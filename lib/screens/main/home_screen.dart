import 'package:flutter/material.dart';
import 'package:portfolio/screens/main/widgets/home_banner.dart';
import 'package:portfolio/screens/sidebar/side_home_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SideHomeScreen(
      children: [
        HomeBanner(),
      ],
    );
  }
}
