import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  final String title;
  final String price;
  final String image;

  const BookCard({
    Key? key,
    required this.title,
    required this.price,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.5,
      height: size.height * 0.39,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.network(
                width: size.width * 0.5,
                height: size.height * 0.27,
                image ?? '',
                fit: BoxFit.none,
                scale: 1.18,
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Text(
              title,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(height: size.height * 0.01),
            Text(
              price,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
