import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management__provider_blocs/pages/counter.statful.page.dart';
import 'package:state_management__provider_blocs/provider/counter.state.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => CounterState())],
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue),
        routes: {"/": (context) => CounterPage()},
      ),
    );
  }
}
