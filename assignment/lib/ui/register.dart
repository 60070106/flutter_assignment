import 'package:flutter/material.dart';

void main() => runApp(RegistPage());

class RegistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Register Page'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}