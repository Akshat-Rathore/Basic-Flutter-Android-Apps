import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Result({ Key? key }) : super(key: key);
  final int ts;
  final Function Reset;
  Result(this.ts, this.Reset);

  String get resultphrase {
    var resulttext = ts == 400
        ? "Jio!"
        : ts == 300
            ? "Missed 1 huh"
            : ts == 200
                ? "1"
                : "0";

    return resulttext;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Text(resultphrase,
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold))),
        FlatButton(
          onPressed: Reset,
          child: Text("Restart"),
          textColor: Colors.blue,
        )
      ],
    );
  }
}
