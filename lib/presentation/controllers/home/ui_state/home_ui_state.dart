import 'categories.dart';
import 'latest_books.dart';
import 'recommended.dart';

class HomeState {
  final List<LatestBooks> latestBooks;
  final List<Categories> categories;
  final List<Recommended> recommended;
  final bool loading;
  final Object? error;

  HomeState({
    this.latestBooks = const [],
    this.categories = const [],
    this.recommended = const [],
    this.loading = false,
    this.error,
  });

  HomeState copyWith({
    List<LatestBooks>? latestBooks,
    List<Categories>? categories,
    List<Recommended>? recommended,
    bool? loading,
    List<String>? data,
    Object? error,
  }) {
    return HomeState(
      latestBooks: latestBooks ?? this.latestBooks,
      categories: categories ?? this.categories,
      recommended: recommended ?? this.recommended,
      loading: loading ?? this.loading,
      error: error ?? this.error,
    );
  }
}


