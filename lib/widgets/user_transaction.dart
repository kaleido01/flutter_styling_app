import 'package:flutter/material.dart';
import '../models/transaction.dart';
import './new_transaction.dart';
import "./transaction_list.dart";

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  void onSubmit(String title, double amount) {
    final newTransaction = Transaction(
      id: _userTransaction.length.toString(),
      title: title,
      amount: amount,
      date: DateTime.now(),
    );
    setState(() {
      _userTransaction.add(newTransaction);
    });
  }

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
      children: <Widget>[
        NewTransaction(
          onSubmit,
        ),
        TransactionList(_userTransaction),
      ],
    );
  }
}
