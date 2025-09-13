import 'package:flutter/material.dart';
import 'package:options_categorizer/category_creator.dart';

void main() => runApp(const OptionsCategorizer());

class OptionsCategorizer extends StatefulWidget {
  const OptionsCategorizer({super.key});

  @override
  State<StatefulWidget> createState() => _OptionsCategorizerState();
}

class _OptionsCategorizerState extends State<OptionsCategorizer> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text('Options Categorizer')),
            body: const Column(
              children: [
                CategoryCreator()
              ],
            )));
  }
}
