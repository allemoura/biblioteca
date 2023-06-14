import 'package:biblioteca/app/utils/extensions/datetime_extension.dart';
import 'package:biblioteca/app/widgets/custom_buttom.dart';
import 'package:biblioteca/app/widgets/custom_text.dart';
import 'package:biblioteca/app/widgets/dialogs/confirm_rafffle.dart';
import 'package:biblioteca/domain/entities/raffle.dart';
import 'package:biblioteca/domain/entities/user.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class RaffleView extends StatelessWidget {
  final Raffle raffle;
  final User currentUser;
  final Function(Raffle, User) onSave;
  const RaffleView(
      {super.key,
      required this.raffle,
      required this.currentUser,
      required this.onSave});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 200,
          width: 150,
          margin: const EdgeInsets.only(left: 5, right: 5),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: raffle.book!.cover!,
              width: 120,
              height: 120,
            ).image),
          ),
        ),
        const SizedBox(height: 5),
        CustomText(value: raffle.toRaffle.customToString()),
        const SizedBox(height: 5),
        CustomButton(
          enable:
              (!verifyIsInRaffle() && raffle.createdBy!.id != currentUser.id),
          width: 140,
          title: "Participar",
          onTap: () {
            showDialog(
                context: context,
                builder: (context) => ConfirmRaffle(
                    raffle: raffle,
                    onConfirm: () => onSave(raffle, currentUser)));
          },
        ),
      ],
    );
  }

  bool verifyIsInRaffle() {
    for (final participant in raffle.participants) {
      if (participant.id == currentUser.id) {
        return true;
      }
    }
    return false;
  }
}
