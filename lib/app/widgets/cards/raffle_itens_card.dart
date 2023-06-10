import 'package:biblioteca/app/widgets/custom_card.dart';
import 'package:biblioteca/app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class RaffleItensCard extends StatelessWidget {
  final String title, label;
  final Function() onTap;
  const RaffleItensCard(
      {super.key,
      required this.title,
      required this.label,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CustomCard(
        height: 140,
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: CustomText(
                value: title,
                textColor: Theme.of(context).colorScheme.tertiary,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: CustomText(
                value: label,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
