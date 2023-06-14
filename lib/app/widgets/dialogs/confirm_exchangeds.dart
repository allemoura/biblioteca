import 'package:biblioteca/app/pages/select_book_exchanged/select_book_exchanged.dart';
import 'package:biblioteca/app/widgets/custom_buttom.dart';
import 'package:biblioteca/app/widgets/custom_text.dart';
import 'package:biblioteca/domain/entities/exchanged.dart';
import 'package:flutter/material.dart';

class ConfirmExchangeds extends StatelessWidget {
  final Exchanged exchanged;
  final Function() onConfirm;
  const ConfirmExchangeds(
      {super.key, required this.exchanged, required this.onConfirm});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const CustomText(
        value: "Deseja realmente solicitar uma troca para este livro?",
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network(
            exchanged.bookSend.cover!,
            width: 77,
            height: 110,
            fit: BoxFit.fill,
          ),
        ],
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomButton(
              title: "NÃO",
              backgroundColor: Theme.of(context).colorScheme.onTertiary,
              onTap: () => Navigator.pop(context),
            ),
            CustomButton(
              title: "SIM",
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => SelectBookExchanged(
                    exchanged: exchanged,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
