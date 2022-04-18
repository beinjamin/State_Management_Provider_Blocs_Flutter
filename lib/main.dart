import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      routes: {"/": (context) => CounterPage()},
    );
  }
}

class CounterPage extends StatefulWidget {
  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: Text('Counter Value => $counter',
            style: Theme.of(context).textTheme.headline4),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              child: Icon(Icons.remove),
              onPressed: () {
                setState(() {
                  --counter;
                });
              }),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                setState(() {
                  ++counter;
                });
              }),
        ],
      ),
    );
  }
}
