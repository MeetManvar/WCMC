import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime _date1;
  DateTime _date2;
  var _diffrence;
  void _presentDataPicker1() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    ).then((value) {
      if (value != null) {
        setState(() {
          _date1 = value;
        });
      }
    });
  }

  void _presentDataPicker2() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    ).then((value) {
      if (value != null) {
        setState(() {
          _date2 = value;
        });
      }
    });
  }

  void _difference() {
    if (_date1.isAfter(_date2)) {
      _diffrence = _date1.difference(_date2).inDays;
    } else {
      _diffrence = _date2.difference(_date1).inDays;
    }
    Fluttertoast.showToast(
        msg: 'Date Diffrence is ${_diffrence} days',
        backgroundColor: Colors.red);
    print(_diffrence);
  }

  @override
  Widget build(BuildContext context) {
    print('Main build Method');
    print(_date1);
    print(_date2);
    return Scaffold(
      appBar: AppBar(
        title: Text('Date Difference Finder -   Prac3'),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.yellow,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 180,
          left: 15,
          right: 15,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _date1 == null
                      ? 'No Date Choosen!'
                      : "Selected Date : ${DateFormat.yMd().format(_date1)}",
                  style: TextStyle(fontSize: 16),
                ),
                FlatButton(
                  onPressed: () => _presentDataPicker1(),
                  child: Text(
                    'Select Date',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _date2 == null
                      ? 'No Date Choosen!'
                      : "Selected Date : ${DateFormat.yMd().format(_date2)}",
                  style: TextStyle(fontSize: 16),
                ),
                FlatButton(
                  onPressed: () => _presentDataPicker2(),
                  child: Text(
                    'Select Date',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor),
                  ),
                )
              ],
            ),
            FlatButton(
              onPressed: _difference,
              child: Text('Find Difference'),
              color: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
