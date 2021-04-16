import 'package:flutter/material.dart';

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

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Menu - Prac1'),
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            new DrawerHeader(
              child: Column(children: [
                Icon(
                  Icons.account_circle,
                  size: 90,
                ),
                SizedBox(height:8),
                Text("Meet Manvar",style: TextStyle(fontSize: 18),),
                Text("18it062@charusat.edu.in",style: TextStyle(fontSize: 18),),
              ],),
              decoration: BoxDecoration(color: Colors.blueAccent),  
            ),
            ListTile(
              title: Text('Dashboard',style: TextStyle(fontSize: 20),),
              onTap: () {},
            ),
            ListTile(
              title: Text('Search',style: TextStyle(fontSize: 20),),
              onTap: () {},
            ),
            ListTile(
              title: Text('My Courses',style: TextStyle(fontSize: 20),),
              onTap: () {},
            ),
            ListTile(
              title: Text('Wishlist',style: TextStyle(fontSize: 20),),
              onTap: () {},
            ),
            ListTile(
              title: Text('Profile',style: TextStyle(fontSize: 20),),
              onTap: () {},
            ),
          ],
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '<= Navigation Drawer Menu>',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ), 
    );
  }
}
