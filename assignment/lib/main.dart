import 'package:flutter/material.dart';
import './ui/login.dart';
// import './ui/register.dart';
// import './ui/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      // home: MyHomePage(),
      initialRoute: "/",
      routes: {
        "/" : (context) => LoginForm(),
        // "/second" : (context) => RegisterForm(),
        // "/detail" : (context) => MainScreen(),
      },
    );
  }
  }

