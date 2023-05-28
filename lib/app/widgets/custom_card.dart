import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget content;
  final double? height;
  const CustomCard({super.key, required this.content, this.height});

  @override
  Widget build(BuildContext context) {
    return Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(20),
        child: Container(
            decoration: BoxDecoration(
                boxShadow: const [BoxShadow()],
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).colorScheme.primaryContainer),
            height: height ?? 155,
            width: MediaQuery.of(context).size.width * 0.95,
            child: content));
  }
}
