import 'package:flutter/material.dart';
import 'package:learning_flutter_project/pages/app_bar/app_bar_scroll_notification_page.dart';
import 'package:learning_flutter_project/pages/home/home_page.dart';

/*
WIDGETS
Icon & IconButton
Image
Placeholder
Row
Scaffold
Text
AnimatedContainer
AnimatedAlign
AnimatedBuilder
AnimatedOpacity
AnimatedWidget
Hero
FadeTransition
AnimatedSize
RotationTransition
SlideTransition
FutureBuilder
StreamBuilder
Align
AspectRatio
ConstrainedBox
FittedBox
FractionallySizedBox
IntrinsicHeight
IntrinsicWidth
GridView
LayoutBuilder
Flow
ListView
Stack
Table
CustomScrollView
SliverAppBar
BottomNavigationBar
Drawer
MaterialApp
TabBar
FloatingActionButton
TextButton
OutlinedButton
Checkbox
Radio
Switch
TextField
AlertDialog
BottomSheet
Card
Divider
ListTile
CustomPaint
DecoratedBox
ClipRect
Opacity
RotatedBox
InheritedWidget
ListenableBuilder
Visibility
SingleChildScrollView
Scrollable
MediaQuery
Theme
RichText
GestureDetector
Expanded
Flexible
Navigation
PageView
PageViewBuilder


imports
 */

/*
FINISHED
AppBar*
Column*
Container*
ElevatedButton*
Center*
Stateless*
Stateful*
Padding*
SizedBox*
 */

void main() {
  runApp(const LearningApp());
}

class LearningApp extends StatelessWidget {
  const LearningApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/appBarScrollNotificationPage': (context) =>
            const AppBarScrollNotificationPage(),
      },
      theme: ThemeData(
        colorSchemeSeed: const Color(0xFF03A9F4),
        useMaterial3: true,
      ),
      // home: const HomePage(),
    );
  }
}
