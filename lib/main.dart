import 'package:flutter/material.dart';
import 'package:options_categorizer/category_creator.dart';
import 'package:options_categorizer/category_selector.dart';

void main() => runApp(const OptionsCategorizer());

class OptionsCategorizer extends StatefulWidget {
  const OptionsCategorizer({super.key});

  @override
  State<StatefulWidget> createState() => _OptionsCategorizerState();
}

class _OptionsCategorizerState extends State<OptionsCategorizer> {
  List<String> categories = [];

  void _addCategory() {
    setState(() {
      categories.add('Category Title');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text('Options Categorizer')),
            body: Column(
              children: [
                CategoryCreator(onAddCategory: _addCategory),
                ...categories.map((e) => CategorySelector(categoryTitle: e))
              ],
            )));
  }
}
