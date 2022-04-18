import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management__provider_blocs/pages/counter.statful.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [],
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue),
        routes: {"/": (context) => CounterPage()},
      ),
    );
  }
}
