import 'package:flutter/material.dart';

class ListViewBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, index) => Column(
          children: [
            ListTile(
              title: Text(items[index]),
            ),
            Divider(
              thickness: 3,
            )
          ],
        ),
      ),
    );
  }
}
