import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String value;
  final Color? textColor;
  final TextStyle? textStyle;
  final FontWeight? fontWeight;
  final double? fontSize;
  const CustomText(
      {Key? key,
      required this.value,
      this.textColor = Colors.black,
      this.textStyle,
      this.fontWeight = FontWeight.normal,
      this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: value,
        style: TextStyle(
            color: textColor, fontSize: fontSize, fontWeight: fontWeight),
      ),
    );
  }
}
