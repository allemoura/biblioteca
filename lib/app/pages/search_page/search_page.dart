import 'package:biblioteca/app/pages/search_page/search_page_store.dart';
import 'package:biblioteca/app/widgets/cards/book_card.dart';
import 'package:biblioteca/app/widgets/cards/user_card.dart';
import 'package:biblioteca/app/widgets/custom_buttom.dart';
import 'package:biblioteca/app/widgets/custom_search_bar.dart';
import 'package:biblioteca/infra/repositories/book_model.dart';
import 'package:biblioteca/infra/repositories/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SearchPage extends StatefulWidget {
  final bool? isRead;
  final bool filterBook;
  const SearchPage({super.key, this.isRead, this.filterBook = false});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final SearchPageStore store = SearchPageStore();
  @override
  void initState() {
    store.init(UserModel.of(context));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
          builder: (context) => Column(
                children: [
                  Container(
                    color: Theme.of(context).primaryColor,
                    height: widget.filterBook ? 110 : 160,
                    child: Column(
                      children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.065),
                        CustomSearchBar(
                            onFieldSubmitted: store.filterOption == "book"
                                ? store.filterBooks
                                : store.filterUser,
                            hint: "pesquisar livro, autor, usuario..."),
                        const SizedBox(height: 10),
                        if (!widget.filterBook)
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomButton(
                                  title: "Livro",
                                  textColor: store.filterOption == "book"
                                      ? null
                                      : Colors.black,
                                  backgroundColor: store.filterOption == "book"
                                      ? null
                                      : Theme.of(context)
                                          .colorScheme
                                          .onTertiary,
                                  onTap: () => store.setFilterOption("book"),
                                ),
                                const SizedBox(width: 10),
                                CustomButton(
                                  title: "Usuario",
                                  textColor: store.filterOption == "user"
                                      ? null
                                      : Colors.black,
                                  backgroundColor: store.filterOption == "user"
                                      ? null
                                      : Theme.of(context)
                                          .colorScheme
                                          .onTertiary,
                                  onTap: () => store.setFilterOption("user"),
                                )
                              ],
                            ),
                          )
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        if (store.filterOption == "book")
                          ...store.books.map(
                            (book) => Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: InkWell(
                                onTap: widget.filterBook
                                    ? () async {
                                        await BookModel().addNewBook(book).then(
                                            (value) =>
                                                Navigator.pop(context, book));
                                      }
                                    : null,
                                child: BookCard(
                                  book: book,
                                  isRead: widget.isRead,
                                  isJustSelect: widget.filterBook,
                                ),
                              ),
                            ),
                          ),
                        if (store.filterOption != "book")
                          ...store.users.map(
                            (user) => Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: UserCard(user: user),
                            ),
                          ),
                      ],
                    ),
                  )
                ],
              )),
    );
  }
}
