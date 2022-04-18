import 'package:flutter/material.dart';

void main() => MyApp();

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/":(context)=>CounterPage();
      }
    );
  }
}
