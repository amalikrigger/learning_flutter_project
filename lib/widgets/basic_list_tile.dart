import 'package:flutter/material.dart';

class BasicListTile extends StatelessWidget {
  const BasicListTile({
    super.key,
    this.title = const Text("AppBar"),
    this.subtitle = const Text("AppBar with shadow and scroll under elevation"),
    this.onTap,
    this.tileColor = Colors.cyan,
  });
  final Widget title;
  final Widget subtitle;
  final void Function()? onTap;
  final Color tileColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListTile(
        title: title,
        subtitle: const Text("AppBar with shadow and scroll under elevation"),
        tileColor: tileColor,
        onTap: onTap,
      ),
    );
  }
}
