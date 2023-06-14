import 'package:biblioteca/app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class OptionsLibrary extends StatelessWidget {
  final String? selectedRadio;
  final Function(String?) setRadio;

  const OptionsLibrary(
      {super.key, required this.selectedRadio, required this.setRadio});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: CustomText(
            value: "Adicionar Livro em:",
            fontSize: 18,
            textColor: Theme.of(context).colorScheme.secondary,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Radio(
                    value: "Lido",
                    groupValue: selectedRadio,
                    activeColor: Theme.of(context).primaryColor,
                    onChanged: setRadio,
                  ),
                  const CustomText(value: "Lido")
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: "Quero ler",
                    groupValue: selectedRadio,
                    activeColor: Theme.of(context).primaryColor,
                    onChanged: setRadio,
                  ),
                  const CustomText(value: "Quero ler")
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
