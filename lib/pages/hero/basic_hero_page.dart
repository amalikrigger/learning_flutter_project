import 'package:flutter/material.dart';

class BasicHeroPage extends StatelessWidget {
  const BasicHeroPage({super.key, required this.tag});
  final String tag;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListTile Hero'),
      ),
      body: Center(
          child: Hero(
        tag: tag,
        child: Material(
          child: ListTile(
            title: const Text(
              'ListTile with Hero',
            ),
            subtitle: const Text('Tap here to go back'),
            tileColor: Colors.blue[700],
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
      )),
    );
  }
}
