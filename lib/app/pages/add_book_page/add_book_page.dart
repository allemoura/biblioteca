// ignore_for_file: use_build_context_synchronously

import 'package:biblioteca/app/pages/add_book_page/add_book_page_store.dart';
import 'package:biblioteca/app/pages/add_book_page/widgets/custom_top.dart';
import 'package:biblioteca/app/pages/add_book_page/widgets/options_library.dart';
import 'package:biblioteca/app/pages/add_book_page/widgets/review_book.dart';
import 'package:biblioteca/app/widgets/custom_buttom.dart';
import 'package:biblioteca/app/widgets/custom_text.dart';
import 'package:biblioteca/domain/entities/book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class AddBookPage extends StatefulWidget {
  final Book book;
  final bool? isRead;

  const AddBookPage({super.key, required this.book, this.isRead});

  @override
  State<AddBookPage> createState() => _AddBookPageState();
}

class _AddBookPageState extends State<AddBookPage> {
  final AddBookPageStore store = AddBookPageStore();

  @override
  void initState() {
    if (widget.isRead != null) {
      if (widget.isRead!) {
        store.selectedRadio = "Lido";
      } else {
        store.selectedRadio = "Quero ler";
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) => Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTop(book: widget.book),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  OptionsLibrary(
                      selectedRadio: store.selectedRadio,
                      setRadio: store.setRadio),
                  if (store.selectedRadio == "Lido") ...[
                    ReviewBook(
                        rate: store.rate,
                        setRate: store.setRate,
                        reviewController: store.reviewController),
                    const SizedBox(height: 9),
                  ],
                  CustomButton(
                    title: "Adicionar",
                    enable: store.selectedRadio != null,
                    onTap: () => store
                        .addBook(widget.book)
                        .then((value) => Navigator.pop(context)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
