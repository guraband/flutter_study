import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: RandomTexts());
  }
}

class RandomTexts extends StatefulWidget {
  const RandomTexts({super.key});

  @override
  State<RandomTexts> createState() => _RandomTextsState();
}

class _RandomTextsState extends State<RandomTexts> {
  List<WordPair> words = generateWordPairs().take(5).toList();

  void _refresh() {
    setState(() {
      words = generateWordPairs().take(5).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final widgets = words
        .map((word) => Text(word.asString, style: const TextStyle(fontSize: 30)))
        .toList();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: widgets,
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: _refresh,
          child: const Text('새로고침', style: TextStyle(fontSize: 20),),
        ),
      ],
    );
  }
}
