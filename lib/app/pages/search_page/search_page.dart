import 'package:biblioteca/app/pages/search_page/search_page_store.dart';
import 'package:biblioteca/app/widgets/cards/book_card.dart';
import 'package:biblioteca/app/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SearchPage extends StatefulWidget {
  final bool? isRead;
  const SearchPage({super.key, this.isRead});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final SearchPageStore store = SearchPageStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CustomSearchBar(
            onFieldSubmitted: store.filterBooks,
            hint: "pesquisar livro, autor, user..."),
      ),
      body: Observer(
        builder: (context) => ListView(
          children: [
            ...store.books.map(
              (book) => Padding(
                padding: const EdgeInsets.only(top: 10),
                child: BookCard(book: book, isRead: widget.isRead),
              ),
            )
          ],
        ),
      ),
    );
  }
}
