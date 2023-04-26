import 'package:books_app/data/datasource/remote/responses/book_details_entity.dart';

import '../model/books.dart';
import 'mapper.dart';

class BookDetailsMapperDTO implements Mapper<BookDetailsEntity, Books> {
  @override
  Books map(BookDetailsEntity object) {
    return Books(
      title: object.title ?? '',
      author: object.authors ?? '',
      description: object.desc ?? '',
      pages: object.pages ?? '',
      image: object.image ?? '',
      language: object.language ?? "",
      link: object.url ?? '',
      price: object.price ?? '',
      rating: object.rating ?? '',
    );
  }
}
