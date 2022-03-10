import 'package:flutter/material.dart';

class ButtonLearning extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text('Belajar Button'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
          ],
        ),
        body: Stack(children: [
          Positioned(
              top: 30,
              left: 30,
              width: 250,
              height: 250,
              child: Container(
                  width: 150,
                  height: 150,
                  color: Colors.green[300],
                  child: Text('green',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      )))),
          Positioned(
              top: 70,
              left: 60,
              width: 250,
              height: 250,
              child: Container(
                  width: 150,
                  height: 150,
                  color: Colors.red,
                  child: Text(
                    'Red',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ))),
          Positioned(
              top: 130,
              left: 90,
              width: 250,
              height: 250,
              child: Container(
                  width: 150,
                  height: 150,
                  color: Colors.purple,
                  child: Text('Purple',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ))))
        ]));
  }
}
