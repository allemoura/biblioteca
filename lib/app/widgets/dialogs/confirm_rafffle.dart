import 'package:biblioteca/app/utils/extensions/datetime_extension.dart';
import 'package:biblioteca/app/widgets/custom_buttom.dart';
import 'package:biblioteca/app/widgets/custom_text.dart';
import 'package:biblioteca/domain/entities/raffle.dart';
import 'package:flutter/material.dart';

class ConfirmRaffle extends StatelessWidget {
  final Raffle raffle;
  final Function(Raffle) onConfirm;
  const ConfirmRaffle(
      {super.key, required this.raffle, required this.onConfirm});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const CustomText(
        value: "Deseja realmente participar do sorteio desse livro?",
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network(
            raffle.book.cover!,
            width: 77,
            height: 110,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 200,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const CustomText(
                        value: "Data do sorteio:",
                        fontWeight: FontWeight.bold,
                      ),
                      CustomText(value: raffle.toRaffle.customToString())
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 200,
                  child: raffle.toSend
                      ? const CustomText(
                          value: "O sorteador vai arcar com a entrega.",
                        )
                      : CustomText(
                          value:
                              "O sorteador vai combinar a entrega apenas para a região do cep dele ${raffle.cep}."),
                )
              ],
            ),
          )
        ],
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomButton(
              title: "NÃO",
              enable: false,
              onTap: () => Navigator.pop(context),
            ),
            CustomButton(
              title: "SIM",
              onTap: () => onConfirm(raffle),
            ),
          ],
        )
      ],
    );
  }
}
