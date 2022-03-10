import 'package:flutter/material.dart';

class Latihan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan'),
      ),
      body: Container(
          child: Center(
            child: Text(
              'Flutter World for Mobile',
              style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.deepPurple,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white,
                  decorationStyle: TextDecorationStyle.dotted,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.justify,
            ),
          ),
          height: 300,
          decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(10.0),
              gradient: LinearGradient(colors: [
                Colors.blue,
                Colors.red,
              ], begin: Alignment.topRight, end: Alignment.bottomLeft))),
    );
  }
}
