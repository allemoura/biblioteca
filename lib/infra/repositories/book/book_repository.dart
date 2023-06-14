import 'package:biblioteca/domain/entities/book.dart';
import 'package:biblioteca/infra/models/book_data.dart';
import 'package:dio/dio.dart';

class BookRepository {
  final dio = Dio();

  Future<List<Book>> getBook(String filter) async {
    final response = await dio.get(
        'https://www.googleapis.com/books/v1/volumes?q={$filter}',
        options: Options(responseType: ResponseType.json));

    List<Book> books = [];

    for (final bookData in response.data["items"]) {
      books.add(BookData.fromGoogleBook(bookData).toEntity());
    }
    return books;
  }
}
