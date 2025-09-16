import 'package:flutter/material.dart';
import 'package:options_categorizer/category_selector.dart';

class CategoryCreator extends StatelessWidget {
  const CategoryCreator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const TextField(
              decoration:
                  InputDecoration(labelText: 'Create your arbitrary category'),
              style: TextStyle(fontSize: 26, decorationThickness: 0)),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: _addCategory,
            child: const Text('Add Category'),
          ),
        ],
      ),
    );
  }

  CategorySelector _addCategory() {
    print('Category added');
    return const CategorySelector(categoryTitle: 'Category Title');
  }
}
