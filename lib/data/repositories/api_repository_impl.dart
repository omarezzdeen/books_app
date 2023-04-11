import 'package:books_app/data/datasource/remote/api_service.dart';
import 'package:books_app/data/datasource/remote/responses/book_details_entity.dart';
import 'package:books_app/data/datasource/remote/responses/books_entity.dart';
import 'package:books_app/data/repositories/base/base_api_repository.dart';
import 'package:books_app/utils/data_state.dart';

import '../../domain/repositories/api_repository.dart';

class ApiRepositoryImpl extends BaseApiRepository implements ApiRepository {
  final ApiService _apiService;

  ApiRepositoryImpl(this._apiService);

  @override
  Future<DataState<List<BooksEntity>>> getAllBooks(String query) {
    return getStateOf(request: () => _apiService.getBooks(query));
  }

  @override
  Future<DataState<BookDetailsEntity>> getBookDetails(String id) {
    return getStateOf<BookDetailsEntity>(
        request: () => _apiService.showBooksDetails(id));
  }
}
