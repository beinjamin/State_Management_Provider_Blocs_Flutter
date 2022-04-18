import 'package:flutter/material.dart';

void main() => MyApp();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {"/": (context) => CounterPage()},
    );
  }
}

class CounterPage extends StatelessWidget {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: Text('Counter Value => $counter'),
      ),
      floatingActionButton: Row(
        children: [FloatingActionButton(onPressed: null)],
      ),
    );
  }
}
