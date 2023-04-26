import 'package:books_app/data/datasource/remote/responses/books_entity.dart';
import 'package:books_app/domain/model/books.dart';

import 'mapper.dart';

// List<Books> toEntity(List<BooksEntity> bookDTOList) {
//   return bookDTOList.map((e) => Books(
//       id: e.isbn13 ?? "",
//       image: e.image ?? "",
//       price: e.price ?? "",
//       title: e.title ?? "",
//       subtitle: e.subtitle ?? ""
//   )).toList();
// }

class BooksMapperDTO implements Mapper<BooksEntity, Books> {
  @override
  Books map(BooksEntity object) {
    return Books(
        id: object.isbn13 ?? "",
        image: object.image ?? "",
        price: object.price ?? "",
        title: object.title ?? "",
        subtitle: object.subtitle ?? ""
    );
  }
}

class BooksListMapperDTO implements MapperList<BooksEntity, Books>{
  @override
  List<Books> map(List<BooksEntity> object) {
    return object.map((e) => Books(
        id: e.isbn13 ?? "",
        image: e.image ?? "",
        price: e.price ?? "",
        title: e.title ?? "",
        subtitle: e.subtitle ?? ""
    )).toList();
  }

}
