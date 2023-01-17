import 'package:flutter/material.dart';

class DraftPage extends StatelessWidget {
  final Color backgroundColor;
  final Widget body;

  const DraftPage({super.key, required this.body, this.backgroundColor = Colors.pink});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BloC Multipage"),
        backgroundColor: backgroundColor,
      ),
      body: body,
    );
  }
}
