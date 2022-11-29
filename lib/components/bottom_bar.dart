import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:abdo_omar_app/screens/dashboard_page.dart';
import 'package:abdo_omar_app/screens/sections.dart';

// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
List<Widget> pageList = [
  const DashboardPage(),
  const Sections(),
  // const SettingScreen(),
];

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      items: const [
        TabItem(
          icon: Icons.home,
          title: 'Home',
        ),
        TabItem(icon: Icons.map, title: 'Sections'),
        TabItem(icon: Icons.data_exploration, title: 'Database'),
        TabItem(icon: Icons.message, title: 'All Data'),
        TabItem(icon: Icons.newspaper, title: 'Billing'),
        TabItem(icon: Icons.report, title: 'Reports'),
      ],
      // ignore: avoid_print
      onTap: (int i) => print('click index=$pageList'),
    );
  }
}
