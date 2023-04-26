import 'package:books_app/data/datasource/remote/responses/base_responses_entity.dart';
import 'package:books_app/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'responses/book_details_entity.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: Constants.BASE_URL)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("new")
  Future<BaseResponsesEntity> getBooks();

  @GET("search/{query}")
  Future<BaseResponsesEntity> searchBooks(@Path() String query);

  @GET("books/{id}")
  Future<BookDetailsEntity> showBooksDetails(@Path() String id);
}
