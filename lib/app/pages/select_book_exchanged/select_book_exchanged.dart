import 'package:biblioteca/app/pages/library_page/widgets/book_details.dart';
import 'package:biblioteca/app/widgets/custom_grid.dart';
import 'package:biblioteca/domain/entities/exchanged.dart';
import 'package:biblioteca/infra/repositories/book_model.dart';
import 'package:biblioteca/infra/repositories/user_model.dart';
import 'package:flutter/material.dart';

class SelectBookExchanged extends StatelessWidget {
  final Exchanged exchanged;
  const SelectBookExchanged({super.key, required this.exchanged});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text( "Selecione o livro para troca", ),
      ),
      body: CustomGrid(
          content: UserModel.of(context)
              .userData!
              .library!
              .toEntity()
              .reads
              .map((book) => InkWell(
                    onTap: () async {
                      await BookModel()
                          .setExchanged(book, exchanged,
                              UserModel.of(context).userData!.toEntity())
                          .then((value) {
                        Navigator.pop(context);
                        Navigator.pop(context);
                      });
                    },
                    child: BookDetails(
                      book: book,
                      exchanged: true,
                    ),
                  ))
              .toList()),
    );
  }
}
