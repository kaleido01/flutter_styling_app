import 'package:flutter/material.dart';
import '../models/transaction.dart';
import "package:intl/intl.dart";

class TransactionList extends StatefulWidget {
  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> _userTransaction = [
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

  @override
  Widget build(BuildContext context) {
    return Column(
        children: _userTransaction
            .map((transaction) => Card(
                    child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "\$ ${transaction.amount.toString()}",
                        style: TextStyle(
                            color: Colors.purple, fontWeight: FontWeight.bold),
                      ),
                      padding: EdgeInsets.all(10),
                      margin:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.purple, width: 2)),
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
            .toList());
  }
}
