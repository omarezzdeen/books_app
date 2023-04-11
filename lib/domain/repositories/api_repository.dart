import 'package:books_app/data/datasource/remote/responses/book_details_entity.dart';
import 'package:books_app/data/datasource/remote/responses/books_entity.dart';
import 'package:books_app/utils/data_state.dart';

abstract class ApiRepository {


  Future<DataState<List<BooksEntity>>> getAllBooks(String query);

  Future<DataState<BookDetailsEntity>> getBookDetails(String id);

}