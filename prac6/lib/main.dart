import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyApp> {
  FlutterLocalNotificationsPlugin fltrNotification;

  @override
  void initState() {
    super.initState();
    var androidInitilize = new AndroidInitializationSettings('mipmap/ic_launcher');
    var iOSinitilize = new IOSInitializationSettings();
    var initilizationsSettings = new InitializationSettings(
        android: androidInitilize, iOS: iOSinitilize);
    fltrNotification = new FlutterLocalNotificationsPlugin();
    fltrNotification.initialize(initilizationsSettings);
  }

  Future _showNotification() async {
    var androidDetails = new AndroidNotificationDetails(
        "18IT062", "Meet Manvar","WCMC",
        importance: Importance.max);
    var iSODetails = new IOSNotificationDetails();
    var generalNotificationDetails =
        new NotificationDetails(android: androidDetails, iOS: iSODetails);

    await fltrNotification.show(
        0, "18IT062", " Meet Manvar ", generalNotificationDetails,
        payload: "Task");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Local Notification App - Prac6'),
            backgroundColor: Colors.black,
          ),
          backgroundColor: Colors.amber[500],
          body: Center(
            child: RaisedButton(
              elevation: 10,
              onPressed: _showNotification,
              child: Text('Notify',
                style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
              ),
            ),
          )),
    );

  }
}


