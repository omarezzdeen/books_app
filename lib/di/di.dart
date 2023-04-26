import 'package:books_app/data/datasource/remote/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

import '../data/repositories/api_repository_impl.dart';
import '../presentation/controllers/home/home_controller.dart';

class MainBinding implements Bindings {
  final Dio _dio = Dio();

  @override
  void dependencies() {
    Get.put(ApiService(_dio));
    Get.put(ApiRepositoryImpl(Get.find()));
    Get.put<HomeController>(HomeController());
  }
}
