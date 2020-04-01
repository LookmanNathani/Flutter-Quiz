import 'package:flutter/material.dart';
import './main.dart';

class Answers extends StatelessWidget {
  Function pointer;
  final String fetched_ans;
  Answers(this.pointer,this.fetched_ans);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(2),
      child: RaisedButton(
        color: Colors.blue,
        onPressed: pointer,
        child: Text(fetched_ans),
      ),
    );
  }
}
