import 'package:flutter/material.dart';
import 'package:belajar_flutter_1/pages/MyHomePage.dart';
import 'package:belajar_flutter_1/pages/latihan.dart';
import 'package:belajar_flutter_1/pages/column_row.dart';
import 'package:belajar_flutter_1/pages/button_flutter.dart';

void main() {
  runApp(HelloBookApp());
}

class HelloBookApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ButtonLearning(),
    );
  }
}
