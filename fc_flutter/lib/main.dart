import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var qid = 0;
  var ts = 0;

  void reset() {
    setState(() {
      qid = 0;
      ts = 0;
    });
  }

  void answerQ(int s) {
    ts += s;
    setState(() {
      qid += 1;
    });
    print(qid);
    // qid += 1;
  }

  @override
  Widget build(BuildContext context) {
    var qs = [
      {
        'questionText': "A?",
        'answer': [
          {'Text': 'a', 'Score': 100},
          {'Text': 'p', 'Score': 00},
          {'Text': 'q', 'Score': 00},
          {'Text': '1', 'Score': 0}
        ]
      },
      {
        'questionText': "B?",
        'answer': [
          {'Text': 'b', 'Score': 100},
          {'Text': 'p', 'Score': 00},
          {'Text': 'q', 'Score': 00},
          {'Text': '1', 'Score': 00}
        ]
      },
      {
        'questionText': "C?",
        'answer': [
          {'Text': 'c', 'Score': 100},
          {'Text': 'p', 'Score': 00},
          {'Text': 'q', 'Score': 00},
          {'Text': '1', 'Score': 00}
        ]
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Title")),
        body: qid < qs.length
            ? Quiz(qs: qs, answerQ: answerQ, qid: qid)
            : Container(
                width: double.infinity,
                margin: EdgeInsets.all(10),
                child: Result(ts, reset),
              ),
      ),
    );
  }
}
