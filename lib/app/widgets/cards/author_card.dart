import 'package:biblioteca/app/widgets/custom_buttom.dart';
import 'package:biblioteca/app/widgets/custom_card.dart';
import 'package:biblioteca/app/widgets/custom_circular_image.dart';
import 'package:biblioteca/app/widgets/custom_text.dart';
import 'package:biblioteca/domain/entities/author_book.dart';
import 'package:flutter/material.dart';

class AuthorCard extends StatelessWidget {
  final AuthorBook author;
  const AuthorCard({super.key, required this.author});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
        height: 100,
        content: SizedBox(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 10),
              Center(child: CustomCircularImage(imageUrl: author.imageUrl)),
              const SizedBox(width: 20),
              Padding(
                padding: const EdgeInsets.only(top: 18),
                child: CustomText(
                  value: author.name,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 50),
                child: CustomButton(
                  title: "Ver livros",
                  //TUDO: funcao que leva a biblioteca de autor
                  onTap: () {},
                ),
              )
            ],
          ),
        ));
  }
}
