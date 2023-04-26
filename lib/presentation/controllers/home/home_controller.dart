import 'package:books_app/data/repositories/api_repository_impl.dart';
import 'package:books_app/presentation/controllers/home/ui_mapper/latest_books_mapper.dart';
import 'package:get/get.dart';

import 'ui_state/home_ui_state.dart';

class HomeController extends GetxController {
  final _repository = Get.find<ApiRepositoryImpl>();
  final _state = HomeState().obs;

  HomeState get state => _state.value;

  set state(HomeState value) => _state.value = value;

  @override
  void onInit() {
    super.onInit();
    _loadData();
  }

  Future<void> _loadData() async {
    state = state.copyWith(loading: true);
    try {
      final data = await _repository.getAllBooks();
      state = state.copyWith(loading: false, latestBooks: BooksListMapperUIState().map(data));
    } catch (error) {
      state = state.copyWith(error: error.toString(), loading: false);
    }
  }
}
