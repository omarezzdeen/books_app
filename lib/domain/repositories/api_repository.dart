import 'package:books_app/domain/model/books.dart';

abstract class ApiRepository {
  Future<List<Books>> getAllBooks();

  Future<List<Books>> searchBooks(String query);

  Future<Books> getBookDetails(String id);
}
