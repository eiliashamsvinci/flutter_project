import 'package:flutter/material.dart';

class LaureateWidget extends StatelessWidget {
  final String firstname;
  final String surname;
  final String motivation;

  const LaureateWidget({
    super.key,
    this.firstname = "",
    this.surname = "",
    required this.motivation,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$firstname $surname",
          style: TextStyle(
           backgroundColor: Colors.grey,

            fontSize: 20,
          ),
        ),

        const SizedBox(height: 20),

        Text(
          motivation,

          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}