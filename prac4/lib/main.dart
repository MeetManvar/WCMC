import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

enum Tempreture { Celsius, Farenhit }

class _MyHomePageState extends State<MyHomePage> {
  Tempreture _value = Tempreture.Celsius;
  double farenhit;
  double celsius;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temperature Converter - Prac4'),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.yellow[700],
      body: Container(
        padding: EdgeInsets.all(15),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              decoration: InputDecoration(labelText: _value == Tempreture.Farenhit ? 'Farenhit' : 'Celsius', ),
              
              onChanged: (String value) {
                setState(() {
                  var c = double.parse(value);
                  farenhit = 1.8 * (c) + 32;

                  var f = double.parse(value);
                  celsius = ((f) - 32) * (5 / 9);
                });
              }
            ),
            ListTile(
              title: const Text('Celsius'),
              leading: Radio(
                groupValue: _value,
                value: Tempreture.Celsius,
                onChanged: (Tempreture value) {
                  setState(() {
                    _value = value;
                  });
                },
              ),
            ),

            ListTile(
              title: const Text('Farenhit'),
              leading: Radio(
                groupValue: _value,
                value: Tempreture.Farenhit,
                onChanged: (Tempreture value) {
                  setState(() {
                    _value = value;
                  });
                },
              ),
            ),
            Card(
              elevation: 10,
              child :_value == Tempreture.Celsius
                ? Text(
                  farenhit == null
                    ? '32 F\u{00B0}'
                    : farenhit.toStringAsFixed(2) + 'F\u{00B0}',
                  style: TextStyle(fontSize: 25),
                )

                :Text(
                  celsius == null
                    ? '0 C\u{00B0}'
                    : celsius.toStringAsFixed(2) + 'C\u{00B0}',
                  style: TextStyle(fontSize: 25),
                ),
            ),
          ],
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
