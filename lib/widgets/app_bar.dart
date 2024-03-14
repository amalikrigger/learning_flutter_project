import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.lightBlue,
      elevation: 0,
      title: const Text('Flutter Learning'),
      leading: IconButton(
        onPressed: () => print('logout'),
        icon: const Icon(Icons.logout),
      ),
      actions: [
        IconButton(
          onPressed: () => print('open drawer'),
          icon: const Icon(Icons.menu),
          color: Colors.black,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 56);
}
