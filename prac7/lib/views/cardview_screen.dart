import 'package:flutter/material.dart';

class CardViewScreen extends StatelessWidget {
  final items = [
    'Element 1',
    'Element 2',
    'Element 3',
    'Element 4',
    'Element 5',
    'Element 6',
    'Element 7',
    'Element 8',
    'Element 9',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card View'),
      ),
      body: Container(
        height: double.infinity,
        alignment: Alignment.center,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (ctx, index) => Padding(
            padding: const EdgeInsets.all(5.0),
            child: Card(
              elevation: 10,
              child: ListTile(
                title: Text(items[index]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
