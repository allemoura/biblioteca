import 'package:biblioteca/domain/entities/book.dart';
import 'package:biblioteca/infra/repositories/book/book_repository.dart';

class FilterBook {
  final BookRepository _bookRepository = BookRepository();

  Future<List<Book>> call(String filter) => _bookRepository.getBook(filter);
}
