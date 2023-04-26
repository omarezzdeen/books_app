import 'package:books_app/presentation/widgets/book_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/home/home_controller.dart';
import '../../widgets/custom_app_bar.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          const CustomAppBar(
            title: 'Books',
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: null,
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.search),
                onPressed: null,
              ),
            ],
          ),
          Obx(
            () => !controller.state.loading
                ? SizedBox(
                    width: double.infinity,
                    height: size.height * 0.39,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        final state = controller.state.latestBooks[index];
                        return BookCard(
                          title: state.title,
                          price: state.price,
                          image: state.imageUrl,
                        );
                      },
                      itemCount: controller.state.latestBooks.length,
                    ),
                  )
                : const Center(
                    child: CircularProgressIndicator(),
                  ),
          ),
        ],
      ),
    );
  }
}
