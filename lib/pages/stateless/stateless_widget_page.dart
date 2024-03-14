import 'package:flutter/material.dart';

class StatelessWidgetPage extends StatelessWidget {
  const StatelessWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example Stateless Widget'),
      ),
      body: const Center(
        child: Text('Example Stateless Widget'),
      ),
    );
  }
}
