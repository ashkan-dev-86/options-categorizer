import 'package:flutter/material.dart';

class CategoryCreator extends StatelessWidget {
  final VoidCallback onAddCategory;

  const CategoryCreator({super.key, required this.onAddCategory});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const TextField(
            controller: _controller,
              decoration:
                  InputDecoration(labelText: 'Create your arbitrary category'),
              style: TextStyle(fontSize: 26, decorationThickness: 0)),
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
