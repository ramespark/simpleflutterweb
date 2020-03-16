import 'package:flutter/material.dart';
import 'package:simpleweb/ui/data_input_layout.dart';

void main() {
  runApp(SimpleApp());
}

class SimpleApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Flutter Firebase',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DataInputLayout(),
    );
  }
}
