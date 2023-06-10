import 'package:biblioteca/app/pages/library_page/library_page_store.dart';
import 'package:biblioteca/app/pages/library_page/widgets/book_details.dart';
import 'package:biblioteca/app/pages/search_page/search_page.dart';
import 'package:biblioteca/app/widgets/custom_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage>
    with SingleTickerProviderStateMixin {
  final LibraryPageStore store = LibraryPageStore();

  @override
  void initState() {
    store.init(this, context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      if (store.isLoading) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      return Scaffold(
        floatingActionButton: (store.index == 0 || store.index == 1)
            ? FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              SearchPage(isRead: store.index == 0)));
                },
                child: const Icon(Icons.add, size: 40),
              )
            : null,
        body: Column(
          children: [
            const SizedBox(height: 30),
            TabBar(
              indicatorColor: Theme.of(context).primaryColor,
              controller: store.tabController,
              tabs: const [
                Tab(
                  text: 'Lidos',
                ),
                Tab(
                  text: 'Quero ler',
                ),
                Tab(
                  text: 'Trocas',
                ),
                Tab(
                  text: 'Doados',
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: store.tabController,
                children: [
                  CustomGrid(
                    content: store.model!.userData!.library.reads!
                        .map((book) =>
                            BookDetails(book: book.toEntity(), isRead: true))
                        .toList(),
                  ),
                  CustomGrid(
                    content: store.model!.userData!.library.toRead!
                        .map((book) =>
                            BookDetails(book: book.toEntity(), isRead: false))
                        .toList(),
                  ),
                  CustomGrid(
                    content: store.model!.userData!.library.exchangeds!
                        .map((book) => BookDetails(book: book.toEntity()))
                        .toList(),
                  ),
                  CustomGrid(
                    content: store.model!.userData!.library.donateds!
                        .map((book) => BookDetails(book: book.toEntity()))
                        .toList(),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}
