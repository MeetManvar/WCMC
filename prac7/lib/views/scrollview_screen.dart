import 'package:flutter/material.dart';

class ScrollViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scroll View'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildcard(1),
            buildcard(2),
            buildcard(3),
            buildcard(4),
            buildcard(5),
            buildcard(6),
            buildcard(7),
            buildcard(8),
            buildcard(9),
            buildcard(10),
            buildcard(11),
            buildcard(12),
            buildcard(13),
          ],
        ),
      ),
    );
  }

  Widget buildcard(int number) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      alignment: Alignment.center,
      child: Card(
        elevation: 10,
        child: ListTile(
          title: Text(
            'Element ' + number.toString(),
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
