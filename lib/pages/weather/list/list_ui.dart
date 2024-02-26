import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kasairu/models/onecall/onecall_response.dart';
import 'package:kasairu/models/place/place.dart';
import 'package:kasairu/controller/service/judge/judge_umbrella.dart';
import 'package:kasairu/controller/service/judge/result_judge.dart';
import 'package:kasairu/controller/provider/repository/settings_provider.dart';
import 'package:weather_icons/weather_icons.dart';
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
                                        BoxedIcon(result[index].icon, size: 40),
                                        Container(width: 20),
                                        Expanded(
                                          child:Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget> [
                                          (placeList[index].name.length <= 10)
                                            ? Text(placeList[index].name,
                                                style: const TextStyle(
                                                    fontSize: 22,
                                                    fontFamily:
                                                        'M_Plus_Rounded',
                                                    fontWeight:
                                                        FontWeight.w700))
                                            : SizedBox(
                                                width: double.infinity,
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
                                                                    .w700)))),
                                          result[index].resultMessage(18),
                                        ])
                                    )],
                                    ),
                                  )
                                ])))));
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        )));
  }
}
