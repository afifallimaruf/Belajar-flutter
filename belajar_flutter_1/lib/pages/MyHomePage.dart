import 'package:flutter/material.dart';

class MyHomepage extends StatefulWidget {
  MyHomepage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomepage> {
  final List<String> greetings = [
    'Hello Books',
    'Hola Libros',
    'Ciao Libri',
    'Halo Buku'
  ];
  int index = 0;
  String? current;

  void _updateGreeting() {
    setState(() {
      current = greetings[index];
      index = index == (greetings.length - 1) ? 0 : index + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title!),
        ),
        body: Center(
          child: Text(greetings[index],
              style: Theme.of(context).textTheme.headline4),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: _updateGreeting,
            tooltip: 'Greeting',
            child: Icon(
              Icons.insert_emoticon,
            )));
  }
}
