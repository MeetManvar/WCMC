import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  final items = [
    'Element 1',
    'Element 2',
    'Element 3',
    'Element 4',
    'Element 5',
    'Element 6',
    'Element 7',
    'Element 8',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 4.0,
          ),
          itemBuilder: (ctx, index) => Card(
            elevation: 10,
            child: Container(
              alignment: Alignment.center,
              child: Text(
                items[index],
                style: TextStyle(fontSize: 17),
              ),
            ),
          ),
          itemCount: items.length,
        ),
      ),
    );
  }
}
