import 'package:flutter/material.dart';

class CategoryCreator extends StatelessWidget {
  final VoidCallback onAddCategory;
  final TextEditingController controller;

  const CategoryCreator(
      {super.key, required this.onAddCategory, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          TextField(
              controller: controller,
              decoration:
                  const InputDecoration(labelText: 'Create your arbitrary category'),
              style: const TextStyle(fontSize: 26, decorationThickness: 0)),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () => onAddCategory(),
            child: const Text('Add Category'),
          ),
        ],
      ),
    );
  }
}
