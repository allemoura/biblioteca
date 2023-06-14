// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final bool obscureText;
  final IconData? iconData;
  final Color iconColor;
  final Function(String?)? onFieldSubmitted;
  final String? Function(String?) validator;
  final Function()? onEditingComplete;
  final Function(String)? onChange;
  final bool border;
  final String? labelText;
  final bool isSearch;
  List<TextInputFormatter>? textInputFormatter;
  final TextInputType textInputType;
  final bool autoFocus;
  final FocusNode? focusNode;
  final bool removeBorder;

  CustomTextFormField({
    Key? key,
    required this.controller,
    this.hintText,
    this.removeBorder = false,
    this.obscureText = false,
    required this.validator,
    this.textInputType = TextInputType.text,
    this.onEditingComplete,
    this.iconData,
    this.iconColor = Colors.white,
    this.border = false,
    this.onChange,
    this.labelText,
    this.textInputFormatter,
    this.isSearch = false,
    this.onFieldSubmitted,
    this.autoFocus = false,
    this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderDecoration = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 1,
        color: Colors.black,
      ),
      borderRadius: BorderRadius.circular(20),
    );

    return TextFormField(
      controller: controller,
      autofocus: autoFocus,
      decoration: InputDecoration(
        enabledBorder: border
            ? removeBorder
                ? InputBorder.none
                : borderDecoration
            : null,
        focusedBorder: border
            ? removeBorder
                ? InputBorder.none
                : borderDecoration
            : null,
        prefixIcon: iconData == null
            ? null
            : Icon(
                iconData,
              ),
        labelText: labelText,
        hintText: hintText,
        contentPadding: const EdgeInsets.only(bottom: -2),
      ),
      onChanged: onChange,
      focusNode: focusNode,
      onFieldSubmitted: onFieldSubmitted,
      onEditingComplete: onEditingComplete,
      keyboardType: textInputType,
      obscureText: obscureText,
      validator: validator,
      inputFormatters: textInputFormatter,
      textInputAction: isSearch ? TextInputAction.search : null,
    );
  }
}
