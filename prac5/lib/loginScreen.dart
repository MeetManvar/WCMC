import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  var _isEmpty = false;

  var _isCorrect;
  int ctr = 0;

  void _cancel() {
    ctr = 0;
    _isCorrect = null;
    SystemNavigator.pop();
  }

// ignore: non_constant_identifier_names
  void _submit_data() {
    var username = usernameController.text;
    var password = passwordController.text;

    if (username.isEmpty || password.isEmpty) {
      setState(() {
        _isEmpty = true;
      });
    } else {
      if (username == 'meet' && password == '12345678') {
        setState(() {
          _isCorrect = true;
          _isEmpty = false;
          ctr = 0;
        });
      } else {
        setState(() {
          _isCorrect = false;
          _isEmpty = false;
        });
        ctr += 1;
      }
    }
  }

  Widget getWidget() {
    if (_isCorrect != null) {
      if (_isCorrect == true) {
        return Container(
          padding: EdgeInsets.all(3),
          child: const Text(
            'Successfull Login',
            style: TextStyle(color: Colors.white, fontSize: 18),
            textAlign: TextAlign.center,
          ),
          color: Colors.green,
        );
      } else {
        return Container(
          padding: EdgeInsets.all(3),
          child: ctr >= 3
              ? const Text(
                  '3 Login attempts done!',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                )
              : const Text(
                  'Failed to login',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
          color: ctr >= 3 ? Colors.white : Colors.red,
        );
      }
    } else {
      return const Text('');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Static Login Page - Prac5'),
      ),
      backgroundColor: Colors.yellow[700],
      body: Container(
        alignment: Alignment.center,
        child: Container(
          height: 340,
          width: 340,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 15,
            margin: const EdgeInsets.all(10),
            child: Container(
              margin: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Username'),
                    controller: usernameController,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                    obscureText: true,
                    controller: passwordController,
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FlatButton(
                        child: const Text(
                          'Submit',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: ctr >= 3 ? Colors.red : Colors.black,
                        onPressed: ctr >= 3 ? () {} : _submit_data,
                      ),
                      FlatButton(
                        onPressed: _cancel,
                        child: const Text(
                          'Cancel',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.black,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  _isEmpty
                      ? Container(
                          padding: EdgeInsets.all(3),
                          child: const Text(
                            'Please add Credentials!',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      : Text(''),
                  getWidget()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

