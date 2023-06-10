import 'package:flutter/material.dart';

class CustomGrid extends StatefulWidget {
  final List<Widget> content;

  const CustomGrid({
    Key? key,
    required this.content,
    this.scroll = true,
    this.widgetOnly = false,
  }) : super(key: key);
  final bool scroll;
  final bool widgetOnly;

  @override
  State<CustomGrid> createState() => _CustomGridState();
}

class _CustomGridState extends State<CustomGrid> {
  final double runSpacing = 4;

  final double spacing = 4;

  int listSize = 0;

  final columns = 4;

  @override
  Widget build(BuildContext context) {
    listSize = widget.content.length;
    Widget child = Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Wrap(
        runSpacing: runSpacing,
        spacing: spacing,
        alignment: WrapAlignment.center,
        children: List.generate(listSize, (index) {
          return Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: widget.content[index]);
        }),
      ),
    );
    return widget.scroll
        ? SingleChildScrollView(child: child)
        : widget.widgetOnly
            ? widget.content[0]
            : child;
  }
}
