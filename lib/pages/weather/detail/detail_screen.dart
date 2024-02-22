import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kasairu/models/place/place.dart';
import 'package:kasairu/pages/weather/detail/weather_ui.dart';
import 'package:kasairu/pages/weather/detail/detail_header.dart';

import '../../../models/onecall/onecall_hourly.dart';
import '../../../controller/function/judge/result_judge.dart';

class DetailScreen extends ConsumerWidget {
  final List<OneCallHourly> entry;
  final Place place;
  final ResultJudge result;
  
  const DetailScreen({
      required this.entry,
      required this.place,
      required this.result,
      super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: const DetailScreenHeader(),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: WeatherUI(
                entry: entry,
                place: place,
                result: result,
              ),
          ));
  }
}
