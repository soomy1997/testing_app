import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:testingapp/src/second_screen.dart';

void main() {
  runApp(RandomWordsState());
}

class RandomWordsState extends StatefulWidget {
  @override
  _RandomWordsStateState createState() => _RandomWordsStateState();
}


class _RandomWordsStateState extends State<RandomWordsState> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'flutter app',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget  {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<WordPair> _suggestions = <WordPair>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text('My Flutter App'),
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(itemBuilder: (BuildContext context, int i) {
      if (i.isOdd) return Divider();
      final index = i ~/ 2;
      if (index >= _suggestions.length) {
        _suggestions.addAll(generateWordPairs().take(10));
      }
      return _buildRow(_suggestions[index]);
    });
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
      subtitle: Text('my app status '),
      trailing: Icon(
        Icons.favorite,
        color: Colors.red,
      ),
      leading: CircleAvatar(
        child: FlutterLogo(

          colors: Colors.red,
        ),
      ),
      title: Text(
        pair.asPascalCase,
      ),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) => SecondScreen(pair),
          ),
        );
      },
    );
  }
}
