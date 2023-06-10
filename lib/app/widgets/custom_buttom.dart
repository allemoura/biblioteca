import 'package:biblioteca/app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double? height;
  final double? width;
  final bool enable;
  final bool borderRadius;
  final String title;
  final Function()? onTap;

  const CustomButton(
      {super.key,
      this.height,
      this.width,
      this.enable = true,
      this.borderRadius = true,
      required this.title,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height ?? 40,
        width: width ?? 120,
        decoration: BoxDecoration(
            color: enable
                ? theme.colorScheme.secondary
                : theme.colorScheme.onTertiary,
            borderRadius: borderRadius ? BorderRadius.circular(20) : null),
        child: Center(
            child: CustomText(
          value: title,
          fontWeight: enable ? FontWeight.bold : null,
          textColor: enable
              ? theme.colorScheme.onSecondary
              : theme.colorScheme.onBackground,
        )),
      ),
    );
  }
}
