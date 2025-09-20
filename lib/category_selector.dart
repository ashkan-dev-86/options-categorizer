import 'package:flutter/material.dart';

class CategorySelector extends StatelessWidget {
  final String categoryTitle;

  const CategorySelector({super.key, required this.categoryTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              alignment: Alignment.centerLeft),
          onPressed: () => print('Category pressed'),
          child: Text(categoryTitle,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              )),
        ));
  }
}
