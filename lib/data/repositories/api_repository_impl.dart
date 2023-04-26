import 'package:books_app/data/datasource/remote/api_service.dart';
import 'package:books_app/data/datasource/remote/responses/books_entity.dart';
import 'package:books_app/data/repositories/base/base_api_repository.dart';
import 'package:books_app/domain/model/books.dart';

import '../../domain/mapper/book_details_dto_mapper.dart';
import '../../domain/mapper/book_mapper_dto_mapper.dart';
import '../../domain/repositories/api_repository.dart';
import '../datasource/remote/responses/base_responses_entity.dart';

class ApiRepositoryImpl extends BaseApiRepository implements ApiRepository {
  final ApiService _apiService;
  final BookDetailsMapperDTO _bookDetailsMapperDTO = BookDetailsMapperDTO();
  final BooksListMapperDTO _booksListMapperDTO = BooksListMapperDTO();

  ApiRepositoryImpl(this._apiService);

  @override
  Future<List<Books>> searchBooks(String query) {
    return tryToCall<BaseResponsesEntity>(
      () => _apiService.searchBooks(query),
    ).then(
        (value) => _booksListMapperDTO.map(value.books ?? []));
  }

  @override
  Future<Books> getBookDetails(String id) async {
    return await _apiService
        .showBooksDetails(id)
        .then((value) => _bookDetailsMapperDTO.map(value));
  }

  @override
  Future<List<Books>> getAllBooks() async {
    return tryToCall<BaseResponsesEntity>(
      () => _apiService.getBooks(),
    ).then(
        (value) => _booksListMapperDTO.map(value.books ?? []));
  }

  Future<T> tryToCall<T>(Future<T> Function() call) async {
    try {
      return await call();
    } on Exception {
      throw Exception('Failed to load data');
    }
  }
}
