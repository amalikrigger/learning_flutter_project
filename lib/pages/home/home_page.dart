import 'package:flutter/material.dart';
import 'package:learning_flutter_project/pages/container/container_transformed_page.dart';
import 'package:learning_flutter_project/pages/stateful/stateful_widget_page.dart';
import 'package:learning_flutter_project/pages/stateless/stateless_widget_page.dart';

import '../../widgets/app_bar.dart';
import '../../widgets/basic_list_tile.dart';
import '../../widgets/fade_list_tile.dart';
import '../../widgets/hero_list_tile.dart';
import '../app_bar/app_bar_shadow_scroll_under_page.dart';
import '../column/basic_column_page.dart';
import '../elevated_button/elevated_button_page.dart';
import '../hero/basic_hero_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: ListView(
        children: [
          BasicListTile(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const AppBarShadowScrollUnderPage(),
              ),
            ),
          ),
          FadeListTile(
            title: const Text('AppBar with scroll notification'),
            onTap: () => Navigator.of(context)
                .pushNamed('/appBarScrollNotificationPage'),
          ),
          HeroListTile(
            tag: 'ListTile-Hero',
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const BasicHeroPage(
                  tag: 'ListTile-Hero',
                ),
              ),
            ),
          ),
          BasicListTile(
            title: const Text('Basic Column'),
            subtitle: const Text('A page showing a basic column widget'),
            tileColor: Colors.amber,
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const BasicColumnExample(),
              ),
            ),
          ),
          BasicListTile(
            title: const Text('Transformed Container'),
            subtitle: const Text('A page showing a transformed container'),
            tileColor: Colors.greenAccent,
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ContainerTransformed(),
              ),
            ),
          ),
          BasicListTile(
            title: const Text('Basic Elevated Button'),
            subtitle: const Text('A page showing an example elevated button'),
            tileColor: Colors.redAccent,
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ElevatedButtonPage(),
              ),
            ),
          ),
          BasicListTile(
            title: const Text('Basic Stateless Widget'),
            subtitle: const Text('A page showing an example Stateless Widget'),
            tileColor: Colors.purpleAccent,
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const StatelessWidgetPage(),
              ),
            ),
          ),
          BasicListTile(
            title: const Text('Basic Stateful Widget'),
            subtitle: const Text('A page showing an example Stateful Widget'),
            tileColor: Colors.pinkAccent,
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const StatefulWidgetPage(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
