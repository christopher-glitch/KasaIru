import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kasairu/models/onecall/onecall_response.dart';
import 'package:kasairu/models/place/place.dart';
import 'package:kasairu/process/judge/judge_umbrella.dart';
import 'package:kasairu/process/judge/result_judge.dart';
import 'package:kasairu/provider/settings_provider.dart';

import '../../../process/util/forecast_icon.dart';
import '../../../process/util/time_util.dart';
import '../detail/detail_screen.dart';

class ListUI extends ConsumerWidget {
  final LinkedHashMap<Place, OneCallResponse> response;

  const ListUI({required this.response, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<int> settingRainJudge = ref.watch(settingsProvider);
    List<ResultJudge> result = [];
    List<Place> placeList = response.keys.toList();
    List<OneCallResponse> responseList = response.values.toList();

    for (OneCallResponse res in responseList) {
      result.add(judgeTakeUmbrella(res.hourly, settingRainJudge));
    }

    return (Container(
        margin: const EdgeInsets.all(7),
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: ListView.separated(
          shrinkWrap: true,
          padding: const EdgeInsets.all(8),
          itemCount: result.length,
          itemBuilder: (BuildContext context, int index) {
            return Center(
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailScreen(
                                  entry: responseList[index].hourly,
                                  place: placeList[index], 
                                  result: result[index],
                                )),
                      );
                    },
                    child: SizedBox(
                        height: 80,
                        child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                            color: Colors.white,
                            borderOnForeground: true,
                            elevation: 3,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(3),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        result[index].listIcon,
                                        Container(width: 20),
                                        (placeList[index].name.length <= 10)
                                            ? Text(placeList[index].name,
                                                style: const TextStyle(
                                                    fontSize: 22,
                                                    fontFamily:
                                                        'M_Plus_Rounded',
                                                    fontWeight:
                                                        FontWeight.w700))
                                            : Flexible(
                                                child: SingleChildScrollView(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    child: Text(
                                                        placeList[index].name,
                                                        maxLines: 1,
                                                        style: const TextStyle(
                                                            fontSize: 22,
                                                            fontFamily:
                                                                'M_Plus_Rounded',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700))))
                                      ],
                                    ),
                                  )
                                ])))));
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        )));
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
