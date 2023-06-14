import 'package:biblioteca/app/widgets/custom_buttom.dart';
import 'package:biblioteca/app/widgets/custom_text.dart';
import 'package:biblioteca/domain/entities/book.dart';
import 'package:flutter/material.dart';

class DetailsExchanged extends StatelessWidget {
  final Book exchanged;
  final Book newBook;

  const DetailsExchanged(
      {super.key, required this.exchanged, required this.newBook});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: CustomText(
        value: "Você trocou ${exchanged.title} por ${newBook.title}",
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network(
            exchanged.cover!,
            width: 77,
            height: 110,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Align(
              heightFactor: 3,
              alignment: Alignment.center,
              child: Icon(
                Icons.sync_alt,
                size: 40,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          Image.network(
            newBook.cover!,
            width: 77,
            height: 110,
            fit: BoxFit.fill,
          ),
        ],
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              title: "DETALHES",
              //TUDO: navegação para tela de uma troca
              onTap: () => Navigator.pop(context),
            ),
          ],
        )
      ],
    );
  }
}
