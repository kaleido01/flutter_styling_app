import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function onSubmit;

  NewTransaction(
    this.onSubmit,
  );

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleControler = TextEditingController();
  final amountControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
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
                keyboardType: TextInputType.number,
                controller: amountControler,
              ),
              FlatButton(
                child: Text("Add transaction"),
                onPressed: () => widget.onSubmit(
                    titleControler.text, double.parse(amountControler.text)),
                textColor: Colors.purple,
              )
            ],
          )),
    );
  }
}
