import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WeatherCard extends StatefulWidget {
  const WeatherCard({super.key});

  @override
  State<WeatherCard> createState() => WeatherCardState();
}

class WeatherCardState extends State<WeatherCard> {
  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;

    return (
      Container(
        margin: const EdgeInsets.all(3),
        padding: const EdgeInsets.only(left: 5.0, right: 5.0),
        child: SizedBox(
            width: _screenSize.width,
            height: 150,
            child: Card(
                color: Colors.lightBlue[300],
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Icon(Icons.sunny, color: Colors.amber[500], size: 35)
                    ],
                  )
                )
              )
            )
          )
        );
  }
}
