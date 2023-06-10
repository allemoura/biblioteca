// ignore_for_file: use_build_context_synchronously

import 'package:biblioteca/app/widgets/custom_buttom.dart';
import 'package:biblioteca/app/widgets/custom_text.dart';
import 'package:biblioteca/domain/entities/book.dart';
import 'package:biblioteca/domain/entities/book_review.dart';
import 'package:biblioteca/infra/repositories/book_model.dart';
import 'package:biblioteca/infra/repositories/user_model.dart';
import 'package:flutter/material.dart';
import 'package:rate/rate.dart';

class AddBookPage extends StatefulWidget {
  final Book book;
  final bool? isRead;

  const AddBookPage({super.key, required this.book, this.isRead});

  @override
  State<AddBookPage> createState() => _AddBookPageState();
}

class _AddBookPageState extends State<AddBookPage> {
  String? selectedRadio;
  double rate = 0;

  @override
  void initState() {
    if (widget.isRead != null) {
      if (widget.isRead!) {
        selectedRadio = "Lido";
      } else {
        selectedRadio = "Quero ler";
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const radius = Radius.circular(40);
    final TextEditingController reviewController = TextEditingController();
    final BookModel bookModel = BookModel();

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: const BorderRadius.only(
                  bottomLeft: radius, bottomRight: radius),
            ),
            width: MediaQuery.of(context).size.width,
            height: 140,
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Image.network(
                    widget.book.cover!,
                    height: 80,
                  ),
                  const SizedBox(width: 20),
                  Flexible(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Column(
                        children: [
                          CustomText(
                            value: widget.book.title,
                            textColor: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          const Rate(
                            iconSize: 25,
                            initialValue: 0,
                            readOnly: true,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
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
                if (selectedRadio == "Lido") ...[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: CustomText(
                          value: "Avalie o livro",
                          fontSize: 18,
                          textColor: Theme.of(context).colorScheme.secondary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Rate(
                        iconSize: 25,
                        allowHalf: true,
                        allowClear: true,
                        initialValue: rate,
                        readOnly: false,
                        onChange: (value) => setRate(value),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.only(left: 5, top: 8),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.55,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Theme.of(context).primaryColor),
                        borderRadius: BorderRadius.circular(20)),
                    child: TextField(
                      controller: reviewController,
                      decoration: const InputDecoration.collapsed(
                          hintText: "Comente o livro aqui...",
                          border: InputBorder.none),
                    ),
                  ),
                  const SizedBox(height: 9),
                ],
                CustomButton(
                  title: "Adicionar",
                  onTap: () async {
                    Book book = widget.book;
                    if (reviewController.text.isNotEmpty) {
                      BookReview bookReview = BookReview(
                          author: UserModel.of(context).userData!.toEntity(),
                          stars: rate,
                          createdAt: DateTime.now(),
                          review: reviewController.text);
                      final reviwes = book.reviews;
                      reviwes.add(bookReview);
                      book = book.copyWith(reviews: reviwes);
                    }
                    if (!await bookModel.contaisBook(widget.book.id!)) {
                      await bookModel.addNewBook(book);
                    }
                    if (selectedRadio == "Quero ler") {
                      UserModel.of(context).addNewBookToRead(book);
                    } else {
                      UserModel.of(context).addNewBookRead(book);
                    }
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  setRadio(String? value) => setState(() {
        selectedRadio = value;
      });

  setRate(double value) => setState(() {
        rate = value;
      });
}
