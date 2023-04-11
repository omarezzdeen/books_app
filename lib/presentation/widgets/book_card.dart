import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  final String title;
  final String rating;
  final String image;

  const BookCard({
    Key? key,
    required this.title,
    required this.rating,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.network(
            image,
            width: 182,
            height: 278,
            fit: BoxFit.cover,
            // how to radius this image
          ),
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ), // name book
        Text(
          rating,
        ), // rating
      ],
    );
  }
}