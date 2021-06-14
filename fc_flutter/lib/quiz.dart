import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);
  final List<Map<String, Object>> qs;
  final Function answerQ;
  final int qid;
  Quiz({@required this.qs, @required this.answerQ, @required this.qid});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(qs[qid]['questionText']),
        ...(qs[qid]['answer'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answerQ(answer['Score']), answer['Text']);
        }).toList()
      ],
    );
  }
}
