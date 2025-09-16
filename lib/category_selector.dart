import 'package:flutter/material.dart';

class CategorySelector extends StatelessWidget {
  final String categoryTitle;

  const CategorySelector({super.key, required this.categoryTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(categoryTitle,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )));
  }
}
