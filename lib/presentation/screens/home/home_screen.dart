import 'package:books_app/presentation/widgets/book_card.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          CustomAppBar(
            title: "Books",
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
          BookCard(
            title: 'Clean Architecture',
            rating: '4.7',
            image:
                'https://m.media-amazon.com/images/P/0134494164.01._SCLZZZZZZZ_SX500_.jpg',
          ),
        ],
      ),
    );
  }
}
