import 'package:biblioteca/app/widgets/custom_buttom.dart';
import 'package:biblioteca/app/widgets/custom_card.dart';
import 'package:biblioteca/app/widgets/custom_circular_image.dart';
import 'package:biblioteca/app/widgets/custom_text.dart';
import 'package:biblioteca/domain/entities/exchanged.dart';
import 'package:biblioteca/infra/repositories/user_model.dart';
import 'package:flutter/material.dart';

class ExchangedCard extends StatelessWidget {
  final Exchanged exchanged;
  final Function(Exchanged, bool) onAccepted;
  const ExchangedCard(
      {super.key, required this.exchanged, required this.onAccepted});

  @override
  Widget build(BuildContext context) {
    final userId = UserModel.of(context).userData!.id;
    return CustomCard(
      height: 180,
      content: SizedBox(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(width: 10),
            Center(
                child: CustomCircularImage(
                    imageUrl: exchanged.userExchanged?.imageProfile)),
            const SizedBox(width: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      value: exchanged.userExchanged!.name,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    CustomText(
                      value:
                          "Troca de ${exchanged.bookExchanged!.title} por ${exchanged.bookSend.title}",
                    ),
                    if (userId == exchanged.userExchanged!.id) ...[
                      const SizedBox(height: 10),
                      if (exchanged.accepted == null) ...[
                        CustomText(
                          fontWeight: FontWeight.bold,
                          value:
                              "Aguarde, ${exchanged.userSend.name} ainda não deu match...",
                        ),
                      ],
                      if (exchanged.accepted == false)
                        CustomText(
                          value: "${exchanged.userSend.name} não deu match :(",
                          fontWeight: FontWeight.bold,
                        ),
                      if (exchanged.accepted == true) ...[
                        CustomText(
                          value: "${exchanged.userSend.name} deu match!",
                          fontWeight: FontWeight.bold,
                        ),
                        CustomText(
                          value:
                              "Esse é o contato: ${exchanged.userSend.email}",
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ],
                    if (userId == exchanged.userSend.id) ...[
                      const SizedBox(height: 10),
                      if (exchanged.accepted == null)
                        Row(
                          children: [
                            CustomButton(
                              title: "Recusar",
                              backgroundColor: Colors.red,
                              onTap: () => onAccepted(
                                exchanged,
                                false,
                              ),
                            ),
                            const SizedBox(width: 15),
                            CustomButton(
                              title: "Aceitar",
                              onTap: () => onAccepted(
                                exchanged,
                                true,
                              ),
                            )
                          ],
                        ),
                      if (exchanged.accepted == false)
                        const CustomText(
                          value: "Você recusou essa troca.",
                          fontWeight: FontWeight.bold,
                        ),
                      if (exchanged.accepted == true)
                        CustomText(
                          value:
                              "Esse é o contato de ${exchanged.userExchanged!.name}: ${exchanged.userExchanged!.email}",
                          fontWeight: FontWeight.bold,
                        ),
                    ],
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
