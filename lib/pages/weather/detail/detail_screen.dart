import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kasairu/controller/provider/repository/favorite_provider.dart';
import 'package:kasairu/controller/provider/repository/settings_provider.dart';
import 'package:kasairu/controller/service/judge/judge_umbrella.dart';
import 'package:kasairu/controller/service/judge/result_judge.dart';
import 'package:kasairu/models/place/place.dart';
import 'package:kasairu/pages/weather/detail/weather_ui.dart';
import 'package:kasairu/pages/weather/detail/detail_header.dart';

import '../../../models/onecall/onecall_hourly.dart';

class DetailScreen extends ConsumerWidget {
  final List<OneCallHourly> entry;
  final Place place;
  
  const DetailScreen({
      required this.entry,
      required this.place,
      super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Place> favoriteList = ref.watch(favoriteProvider);
    List<int> settingRainJudge = ref.watch(settingsProvider);

    ResultJudge result = judgeTakeUmbrella(entry, settingRainJudge);
    return Scaffold(
        appBar: const DetailScreenHeader(),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: WeatherUI(
                entry: entry,
                place: place,
                result: result,
                favorite: favoriteList.contains(place),
              ),
          ));
  }
}
