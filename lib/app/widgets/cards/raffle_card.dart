import 'package:biblioteca/app/utils/extensions/datetime_extension.dart';
import 'package:biblioteca/app/widgets/custom_buttom.dart';
import 'package:biblioteca/app/widgets/custom_card.dart';
import 'package:biblioteca/app/widgets/custom_text.dart';
import 'package:biblioteca/domain/entities/raffle.dart';
import 'package:biblioteca/domain/entities/user.dart';
import 'package:biblioteca/infra/repositories/raffle_model.dart';
import 'package:biblioteca/infra/repositories/user_model.dart';
import 'package:flutter/material.dart';

class RaffleCard extends StatelessWidget {
  final Raffle raffle;
  const RaffleCard({super.key, required this.raffle});

  @override
  Widget build(BuildContext context) {
    final currentUser = UserModel.of(context).userData!.toEntity();
    final userIsInRaffle =
        verifeUserIsInRaffle(raffle.participants, currentUser);
    return CustomCard(
      height: 200,
      content: SizedBox(
        child: Row(
          children: [
            const SizedBox(width: 22),
            Image.network(
              raffle.book!.cover!,
              width: 65,
              height: 100,
              fit: BoxFit.fill,
            ),
            const SizedBox(width: 30),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  CustomText(
                    value: raffle.book!.title,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  if (raffle.toRaffle.isAfter(DateTime.now())) ...[
                    CustomText(
                        value:
                            "O sorteio acontecerá dia ${raffle.toRaffle.customToString()}."),
                    raffle.toSend
                        ? const CustomText(
                            value: "O sorteador vai arcar com a entrega.")
                        : CustomText(
                            value:
                                "O sorteador deseja combinar a entrega na região do seguinte cep: ${raffle.cep}"),
                    if (raffle.createdBy!.id != currentUser.id)
                      Padding(
                        padding: EdgeInsets.only(
                            left: userIsInRaffle ? 0 : 160, right: 10, top: 25),
                        child: CustomButton(
                          width: userIsInRaffle ? 400 : null,
                          enable: !userIsInRaffle,
                          title: userIsInRaffle
                              ? "Você já esta participando"
                              : "Participar",
                          onTap: () => RaffleModel()
                              .addNewParticipant(raffle, currentUser),
                        ),
                      )
                  ],
                  if (raffle.toRaffle.isBefore(DateTime.now())) ...[
                    CustomText(
                        value:
                            "O sorteio aconteceu dia ${raffle.toRaffle.customToString()}."),
                    if (raffle.winner != null)
                      CustomText(
                          value:
                              "O(a) vencedor(a) foi: ${raffle.winner?.name}."),
                    if (raffle.winner != null && raffle.confirmDate != null)
                      CustomText(
                          value:
                              "A entrega foi confirmada dia ${raffle.confirmDate!.customToString()}."),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  verifeUserIsInRaffle(List<User> users, User user) {
    bool contais = false;

    for (final userContain in users) {
      if (userContain.id == user.id) {
        contais = true;
        break;
      }
    }
    return contais;
  }
}
