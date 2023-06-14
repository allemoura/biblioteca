import 'package:biblioteca/app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatefulWidget {
  final Function(String?)? onFieldSubmitted;
  final String hint;
  final String? value;
  const CustomSearchBar(
      {Key? key,
      required this.onFieldSubmitted,
      required this.hint,
      this.value})
      : super(key: key);

  @override
  State<CustomSearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<CustomSearchBar> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: CustomTextFormField(
        iconData: Icons.search,
        controller: _controller,
        isSearch: true,
        hintText: widget.hint,
        onFieldSubmitted: widget.onFieldSubmitted,
        border: true,
        validator: (value) {
          return value;
        },
      ),
    );
  }
}
