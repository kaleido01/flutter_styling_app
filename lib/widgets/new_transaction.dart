import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleControler = TextEditingController();
  final amountControler = TextEditingController();
  final Function onSubmit;

  NewTransaction(
    this.onSubmit,
  );

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
                controller: amountControler,
              ),
              FlatButton(
                child: Text("Add transaction"),
                onPressed: () => onSubmit(
                    titleControler.text, double.parse(amountControler.text)),
                textColor: Colors.purple,
              )
            ],
          )),
    );
  }
}
