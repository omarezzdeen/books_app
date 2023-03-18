

import 'package:books_app/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

// part 'book_api_service.g.dart';

@RestApi(baseUrl: Constants.BASE_URL)
abstract class BookApiService {
  // factory BookApiService(Dio dio, {String baseUrl}) = _BookApiService;

}