import 'package:flutter/material.dart';

class ColumnRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Latihan'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SafeArea(
          child: SingleChildScrollView(
              child: Column(
            children: [
              ColumnWidget(),
              Divider(),
              RowWidget(),
              Divider(),
              ColumnAndRowNestingWidget(),
            ],
          )),
        ),
      ),
    );
  }
}

class ColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text('Column 1'),
        Divider(),
        Text('Column 2'),
        Divider(),
        Text('Column 3')
      ],
    );
  }
}

class RowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text('Row 1'),
        Padding(
          padding: EdgeInsets.all(16.0),
        ),
        Text('Row 2'),
        Padding(
          padding: EdgeInsets.all(16.0),
        ),
        Text('Row 3'),
      ],
    );
  }
}

class ColumnAndRowNestingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text('Column and row nesting 1'),
        Text('Column and row nesting 2'),
        Text('Column and row nesting 3'),
        Padding(
          padding: EdgeInsets.all(16.0),
        ),
        Row(
          children: [
            Text('Row nesting 1'),
            Text('Row and nesting 2'),
            Text('Row nesting 3'),
          ],
        ),
      ],
    );
  }
}
