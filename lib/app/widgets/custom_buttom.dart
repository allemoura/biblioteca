import 'package:biblioteca/app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double? height;
  final double? width;
  final bool enable;
  final bool borderRadius;
  final String title;
  final double? radius;
  final Color? textColor;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? fontSize;
  final Function()? onTap;

  const CustomButton(
      {super.key,
      this.height,
      this.width,
      this.enable = true,
      this.borderRadius = true,
      required this.title,
      this.onTap,
      this.radius,
      this.textColor,
      this.backgroundColor,
      this.borderColor,
      this.fontSize});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: enable ? onTap : null,
      child: Container(
        height: height ?? 40,
        width: width ?? 120,
        decoration: BoxDecoration(
            boxShadow: const [BoxShadow()],
            color: enable
                ? backgroundColor ?? theme.colorScheme.secondary
                : theme.colorScheme.onTertiary,
            border:
                borderColor == null ? null : Border.all(color: borderColor!),
            borderRadius:
                borderRadius ? BorderRadius.circular(radius ?? 20) : null),
        child: Center(
            child: CustomText(
          value: title,
          fontSize: fontSize,
          fontWeight: enable ? FontWeight.bold : null,
          textColor: enable
              ? textColor ?? theme.colorScheme.onSecondary
              : theme.colorScheme.onBackground,
        )),
      ),
    );
  }
}
