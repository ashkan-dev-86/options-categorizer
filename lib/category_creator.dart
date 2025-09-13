import 'package:flutter/material.dart';

class CategoryCreator extends StatelessWidget {
  const CategoryCreator({super.key});

  @override
  Widget build(BuildContext context) {
    void _addCategory() {
      print('Category added');
    }

    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const TextField(
            decoration:
                InputDecoration(labelText: 'Create your arbitrary category'),
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: _addCategory,
            child: const Text('Add Category'),
          ),
        ],
      ),
    );
  }
}
