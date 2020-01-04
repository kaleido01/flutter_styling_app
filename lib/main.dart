import 'package:flutter/material.dart';
import './models/transaction.dart';
import "package:intl/intl.dart";

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
      amount: 32.24,
      date: DateTime.now(),
    ),
  ];

  final titleControler = TextEditingController();
  final amountControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter App")),
      body: Column(
        children: <Widget>[
          Card(
            child: Text("CHART!"),
          ),
          Card(
            elevation: 5,
            child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(labelText: "Title"),
                      controller: titleControler,
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: "Amount"),
                      controller: amountControler,
                    ),
                    FlatButton(
                      child: Text("Add transaction"),
                      onPressed: () {
                        print(titleControler.text);
                      },
                      textColor: Colors.purple,
                    )
                  ],
                )),
          ),
          Column(
            children: transactions
                .map((transaction) => Card(
                        child: Row(
                      children: <Widget>[
                        Container(
                          child: Text(
                            "\$ ${transaction.amount.toString()}",
                            style: TextStyle(
                                color: Colors.purple,
                                fontWeight: FontWeight.bold),
                          ),
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.purple, width: 2)),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              transaction.title,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              DateFormat("yyyy-MM-dd").format(transaction.date),
                              style: TextStyle(color: Colors.grey),
                            )
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
