import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.purple[900]),
        home: Randomwords());
  }
}

class Randomwords extends StatefulWidget {
  @override
  RandomWordState createState() => RandomWordState();
}

class RandomWordState extends State<Randomwords> {
  final wordPair = WordPair.random();
  final wordPair2 = WordPair.random();

  final wordPair3 = WordPair.random();

  Widget _buildList() {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Container(
          height: 50,
          color: Colors.amber[600],
          child: Center(child: Text(wordPair.asPascalCase)),
        ),
        Container(
          height: 50,
          color: Colors.amber[400],
          child: Center(child: Text(wordPair2.asPascalCase)),
        ),
        Container(
          height: 50,
          color: Colors.amber[200],
          child: Center(child: Text(wordPair3.asPascalCase)),
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random Word Pair Generator'),
      ),
      body: _buildList(),
    );
  }
}
