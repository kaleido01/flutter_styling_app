import 'package:flutter/material.dart';
import './widgets/user_transaction.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter App")),
      body: Column(
        children: <Widget>[
          Card(
            child: Text("CHART!"),
          ),
          UserTransaction()
        ],
      ),
    );
  }
}
