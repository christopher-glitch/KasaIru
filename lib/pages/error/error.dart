import 'package:flutter/material.dart';

class ErrorUI extends StatelessWidget {
  final Object error;
  final String cause;

  const ErrorUI({required this.error, required this.cause, super.key});

  @override
  Widget build(BuildContext context) {
    return (Center(
        child: Container(
            margin: const EdgeInsets.all(3),
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text('Error',
                  style: TextStyle(
                      fontSize: 40,
                      letterSpacing: 5,
                      fontFamily: 'M_Plus_Rounded',
                      fontWeight: FontWeight.w700)),
              const SizedBox(height: 10),
              const Icon(Icons.error, size: 100),
              const SizedBox(height: 30),
              const Text('エラーが発生しました',
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'M_Plus_Rounded',
                      fontWeight: FontWeight.bold)),
              const SizedBox(height: 5),
              Text(error.toString(),
                  style: const TextStyle(fontSize: 15)),
            ]))));
  }
}
