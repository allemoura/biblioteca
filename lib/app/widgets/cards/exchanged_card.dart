import 'package:biblioteca/app/widgets/custom_buttom.dart';
import 'package:biblioteca/app/widgets/custom_card.dart';
import 'package:biblioteca/app/widgets/custom_circular_image.dart';
import 'package:biblioteca/app/widgets/custom_text.dart';
import 'package:biblioteca/domain/entities/exchanged.dart';
import 'package:flutter/material.dart';

class ExchangedCard extends StatelessWidget {
  final Exchanged exchanged;
  const ExchangedCard({super.key, required this.exchanged});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
        height: 140,
        content: SizedBox(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 10),
              Center(
                  child: CustomCircularImage(
                      imageUrl: exchanged.userExchanged.imageProfile)),
              const SizedBox(width: 20),
              Expanded(
                  child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            value: exchanged.userExchanged.name,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomText(
                            value:
                                "Troca de ${exchanged.bookExchanged.title} por ${exchanged.bookSend.title}",
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, left: 160),
                            child: CustomButton(
                              title: "Ver chat",
                              //TUDO: funcao que leva ao chat
                              onTap: () {},
                            ),
                          )
                        ],
                      ))),
            ],
          ),
        ));
  }
}
