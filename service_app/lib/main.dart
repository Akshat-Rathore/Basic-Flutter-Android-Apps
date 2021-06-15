import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:service_app/widgets/new_transaction.dart';
import 'models/transaction.dart';
import 'widgets/transaction_list.dart';
import 'widgets/new_transaction.dart';
import 'widgets/users_transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  String titleIn;
  String contentIn;
  final titlecntrl = TextEditingController();
  final amountcntrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              // margin: EdgeInsets.symmetric(horizontal: 20),
              child: Card(
                color: Color(0xFF42A5F5),
                child: Text(
                  "Cart",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.amber,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                elevation: 5,
              ),
            ),
            UserTransaction(),
          ],
        ));
  }
}
