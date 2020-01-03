import 'package:flutter/material.dart';
import './transaction.dart';

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
  final List<Transaction> transactions = [
    Transaction(
      id: "t1",
      title: "New Shoes",
      amount: 99.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t2",
      title: "New boooooo",
      amount: 99.99,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter App")),
      body: Column(
        children: <Widget>[
          Card(
            child: Text("CHART!"),
          ),
          Column(
            children: transactions
                .map((transaction) => Card(
                        child: Row(
                      children: <Widget>[
                        Container(
                          child: Text(transaction.title),
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 2)),
                        ),
                        Column(
                          children: <Widget>[
                            Text(transaction.amount.toString()),
                            Text(transaction.date.toString())
                          ],
                        )
                      ],
                    )))
                .toList(),
          ),
        ],
      ),
    );
  }
}
