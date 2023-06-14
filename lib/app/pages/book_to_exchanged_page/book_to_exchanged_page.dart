// ignore_for_file: use_build_context_synchronously

import 'package:biblioteca/app/pages/add_book_page/widgets/custom_top.dart';
import 'package:biblioteca/app/pages/add_book_page/widgets/review_book.dart';
import 'package:biblioteca/app/pages/book_to_exchanged_page/book_to_exchanged_page_store.dart';
import 'package:biblioteca/app/widgets/custom_buttom.dart';
import 'package:biblioteca/app/widgets/custom_text.dart';
import 'package:biblioteca/domain/entities/book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class BookToExchangedPage extends StatefulWidget {
  final Book book;
  const BookToExchangedPage({super.key, required this.book});

  @override
  State<BookToExchangedPage> createState() => _BookToExchangedPageState();
}

class _BookToExchangedPageState extends State<BookToExchangedPage> {
  final BookToExchangedPageStore store = BookToExchangedPageStore();

  @override
  void initState() {
    store.init(context, widget.book.reviews);
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
                  Row(
                    children: [
                      Checkbox(
                          value: store.selectedRadio,
                          onChanged: store.setRadio),
                      const CustomText(
                          value: "Marca como disponivel para troca")
                    ],
                  ),
                  ReviewBook(
                      rate: store.rate,
                      setRate: store.setRate,
                      reviewController: store.reviewController),
                  const SizedBox(height: 9),
                  CustomButton(
                    title: "Salvar",
                    onTap: () => store
                        .bookToExchanged(widget.book)
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
