import 'package:flutter/material.dart';

class FadeListTile extends StatefulWidget {
  const FadeListTile({
    super.key,
    this.title = const Text('ListTile with FadeTransition'),
    this.onTap,
  });
  final Widget title;
  final void Function()? onTap;

  @override
  State<FadeListTile> createState() => _FadeListTileState();
}

class _FadeListTileState extends State<FadeListTile>
    with TickerProviderStateMixin {
  late final AnimationController _fadeController;
  late final Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _fadeController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);

    _fadeAnimation = CurvedAnimation(
      parent: _fadeController,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _fadeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: Material(
        child: ListTile(
          onTap: widget.onTap,
          title: widget.title,
          selectedTileColor: Colors.green,
          selectedColor: Colors.white,
          selected: true,
        ),
      ),
    );
  }
}
