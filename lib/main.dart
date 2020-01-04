import 'package:flutter/material.dart';
import 'package:styling_app/widgets/transaction_list.dart';
import './models/transaction.dart';

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
          TransactionList()
        ],
      ),
    );
  }
}
