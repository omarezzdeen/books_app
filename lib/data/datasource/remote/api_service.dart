import 'package:books_app/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'responses/book_details_entity.dart';
import 'responses/books_entity.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: Constants.BASE_URL)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;


  @GET("volumes")
  Future<HttpResponse<List<BooksEntity>>> getBooks(@Query("q") String query);

  @GET("volumes/{id}")
  Future<HttpResponse<BookDetailsEntity>> showBooksDetails(@Path() String id);

}