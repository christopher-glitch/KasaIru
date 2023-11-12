import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kasairu/models/onecall/onecall_hourly.dart';
import 'package:kasairu/models/place/place.dart';
import 'package:kasairu/process/judge/result_judge.dart';
import 'package:kasairu/process/util/time_util.dart';
import 'package:kasairu/process/util/forecast_icon.dart';

import '../../../provider/favorite_provider.dart';

class WeatherUI extends ConsumerStatefulWidget {
  final List<OneCallHourly> entry;
  final Place place;
  final ResultJudge result;

  const WeatherUI(
      {required this.entry,
      required this.place,
      required this.result,
      super.key});

  @override
  WeatherUIState createState() => WeatherUIState();
}

class WeatherUIState extends ConsumerState<WeatherUI> {
  static const limitForeCast = 24;

  @override
  Widget build(BuildContext context) {
    var entry = widget.entry;
    var place = widget.place;
    var result = widget.result;

    var initFavorite = ref.watch(favoriteProvider).any((element) => element == place);

    Size size = MediaQuery.of(context).size;
    List<Widget> forecastList = [];

    for (int i = 0; i < limitForeCast; i++) {
      forecastList.add(buildForecast(
          unixToUST(entry[i].dt),
          entry[i].temp.toInt(),
          ((entry[i].pop) * 100).toInt(),
          entry[i].rain?.amount,
          entry[i].weather[0].id,
          size));
    }

    bool favoritePlace = initFavorite;

    debugPrint(favoritePlace.toString());
    return (Center(
        child: Container(
            margin: const EdgeInsets.all(3),
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              (place.name.length <= 6)
                  ? Text(place.name,
                      style: const TextStyle(
                          fontSize: 40,
                          letterSpacing: 5,
                          fontFamily: 'M_Plus_Rounded',
                          fontWeight: FontWeight.w700))
                  : Flexible(
                      child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Text(place.name,
                              maxLines: 1,
                              style: const TextStyle(
                                  fontSize: 40,
                                  letterSpacing: 5,
                                  fontFamily: 'M_Plus_Rounded',
                                  fontWeight: FontWeight.w700)))),
              const SizedBox(height: 3),
              IconButton(
                icon: Icon((favoritePlace == true)
                    ? Icons.favorite
                    : Icons.favorite_border),
                color: (favoritePlace == true) ? Colors.red : Colors.black38,
                onPressed: () {
                  debugPrint(favoritePlace.toString());
                  setState(() {
                    if (favoritePlace) {
                      favoritePlace = false;
                    } else {
                      favoritePlace = false;           
                    }
                  });
                  debugPrint(favoritePlace.toString());
                },
              ),
              const SizedBox(height: 7),
              result.icon,
              SizedBox(height: size.height * 0.02),
              result.message,
              SizedBox(height: size.height * 0.05),
              const Divider(
                color: Color.fromARGB(255, 191, 191, 191),
                thickness: 1.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: size.height * 0.005,
                    left: size.width * 0.03,
                  ),
                  child: const Text(
                    'これからの天気',
                    style: TextStyle(
                      fontFamily: 'M_Plus_Rounded',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.01),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 213, 213, 213)
                        .withOpacity(0.3),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(size.width * 0.005),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: forecastList,
                      ),
                    ),
                  ),
                ),
              ),
            ]))));
  }

  Widget buildForecast(DateTime time, int temp, int? rainChance,
      double? rainAmount, int id, size) {
    temp -= 273;

    double amount = (rainAmount != null) ? rainAmount : 0;

    return Padding(
      padding: EdgeInsets.all(size.width * 0.025),
      child: Column(
        children: [
          Text(
            timeToString(time),
            style: TextStyle(
              fontSize: size.height * 0.02,
              fontWeight: FontWeight.bold,
              fontFamily: 'M_Plus_Rounded',
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: size.height * 0.005,
                ),
                child: getWeatherIcon(
                  id,
                  time,
                  size: size.height * 0.04,
                ),
              ),
            ],
          ),
          Text(
            '$temp°C',
            style: TextStyle(
              fontSize: size.height * 0.02,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: size.height * 0.01,
                ),
                child: Icon(
                  Icons.water_drop,
                  color: Colors.blue,
                  size: size.height * 0.03,
                ),
              ),
            ],
          ),
          if (rainChance != null)
            Text(
              '$rainChance %',
              style: TextStyle(
                fontFamily: 'M_Plus_Rounded',
                color: Colors.blue,
                fontSize: size.height * 0.02,
              ),
            ),
          Text(
            '$amount mm',
            style: TextStyle(
              fontFamily: 'M_Plus_Rounded',
              color: Colors.blue,
              fontSize: size.height * 0.017,
            ),
          ),
          if (rainChance == null) SizedBox(height: size.height * 0.028),
        ],
      ),
    );
  }
}
