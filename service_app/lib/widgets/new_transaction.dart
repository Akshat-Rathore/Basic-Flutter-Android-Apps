import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';
import '../widgets/transaction_list.dart';

class NewTransaction extends StatelessWidget {
  // const NewTransaction({ Key? key }) : super(key: key);
  final Function addnewtr;
  NewTransaction(this.addnewtr);
  final titlecntrl = TextEditingController();
  final amountcntrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
            elevation: 5,
            child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextField(
                      decoration: InputDecoration(labelText: "Title"),
                      controller: titlecntrl,
                      // onChanged: (val) {
                      //   titleIn = val;
                      // },
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: "Amount"),
                      controller: amountcntrl,
                      // onChanged: (val) {
                      //   contentIn = val;
                      // },
                    ),
                    FlatButton(
                      color: Colors.purple,
                      onPressed: () {
                        addnewtr(
                            titlecntrl.text, double.parse(amountcntrl.text));
                      },
                      child: Text("Add"),
                    )
                  ],
                ))));
  }
}
