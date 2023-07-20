import 'package:flutter/material.dart';

class LoadingUI extends StatelessWidget {
  const LoadingUI({super.key});

  @override
  Widget build(BuildContext context) {
    return (Center(
        child: Container(
            margin: const EdgeInsets.all(3),
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Now Loading',
                      style: TextStyle(
                          fontSize: 40,
                          letterSpacing: 5,
                          fontFamily: 'M_Plus_Rounded',
                          fontWeight: FontWeight.w700)),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 100.0,
                    width: 100.0,
                    child: CircularProgressIndicator(),
                  ),
                  SizedBox(height: 100),
                ]))));
  }
}
