import 'package:flutter/material.dart';

class ResultJudge {
  IconData icon;
  bool result;

  ResultJudge({
    required this.icon,
    required this.result,
  });

  Text resultMessage(double size) {

    //25,
    if (result) {
      return Text("傘が必要です",
          style: TextStyle(
              color: const Color.fromARGB(255, 137, 9, 0),
              fontSize: size,
              fontFamily: 'M_Plus_Rounded'));
    } else {
      return Text("傘の心配はありません",
          style: TextStyle(fontSize: size, fontFamily: 'M_Plus_Rounded'));
    }
  }
}
