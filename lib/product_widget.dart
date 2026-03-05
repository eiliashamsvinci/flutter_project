import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  final String name;
  final String description;
  final int price;
  final String imagePath;

  const ProductWidget({
    super.key,
    required this.name,
    required this.description,
    required this.price,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 500,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "$price €",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 8),

                  Text(
                    description,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),

            const SizedBox(width: 16),

            Image.asset(
              imagePath,
              width: 150,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}