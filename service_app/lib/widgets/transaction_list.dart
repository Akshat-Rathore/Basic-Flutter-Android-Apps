import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransictionList extends StatelessWidget {
  final List<Transaction> transactions;
  TransictionList(this.transactions);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
            children: transactions.map((tr) {
      return Card(
          child: Row(
        children: [
          Container(
              margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.greenAccent,
                width: 2,
              )),
              child: Text('\$${tr.amount.toString()}',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.greenAccent,
                  ))),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(tr.title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  )),
              Text(DateFormat('yyyy/MM/dd').format(tr.date)),
            ],
          ),
        ],
      ));
    }).toList()));
  }
}
