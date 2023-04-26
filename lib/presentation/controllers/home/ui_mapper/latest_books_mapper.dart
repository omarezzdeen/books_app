

import '../../../../data/datasource/remote/responses/books_entity.dart';
import '../../../../domain/mapper/mapper.dart';
import '../../../../domain/model/books.dart';
import '../ui_state/latest_books.dart';

class BooksListMapperUIState implements MapperList<Books, LatestBooks>{
  @override
  List<LatestBooks> map(List<Books> object) {
    return object.map((e) => LatestBooks(
        id: e.id ?? "",
        imageUrl: e.image ?? "",
        price: e.price ?? "",
        title: e.title ?? "",
        subtitle: e.subtitle ?? ""
    )).toList();
  }

}