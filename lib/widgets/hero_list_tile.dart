import 'package:flutter/material.dart';
import 'package:learning_flutter_project/widgets/basic_list_tile.dart';

class HeroListTile extends StatelessWidget {
  const HeroListTile({
    super.key,
    required this.tag,
    this.title = const Text('Hero List Tile'),
    this.subTitle = const Text('A list tile that is wrapped with Hero widget'),
    this.onTap,
  });
  final String tag;
  final Widget title;
  final Widget subTitle;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: tag,
      child: BasicListTile(title: title, subtitle: subTitle, onTap: onTap),
    );
  }
}
