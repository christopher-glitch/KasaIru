import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kasairu/controller/provider/repository/favorite_provider.dart';
import 'package:kasairu/controller/service/judge/result_judge.dart';
import 'package:kasairu/models/place/place.dart';
import 'package:kasairu/pages/loading/loading.dart';
import 'package:kasairu/pages/weather/detail/weather_ui.dart';
import 'package:kasairu/pages/weather/detail/detail_header.dart';
import 'package:kasairu/controller/provider/repository/weather_provider.dart';

import '../../../controller/service/judge/judge_umbrella.dart';
import '../../../controller/provider/search/search_provider.dart';
import '../../../controller/provider/repository/settings_provider.dart';
import '../../error/error.dart';

class SearchResultScreen extends ConsumerStatefulWidget {
  const SearchResultScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      SearchResultScreenState();
}

class SearchResultScreenState extends ConsumerState {
  @override
  Widget build(BuildContext context) {
    final oneCallResponse = ref.watch(searchOCRProvider);

    return Scaffold(
        appBar: const DetailScreenHeader(),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: oneCallResponse.when(
            data: (onecall) {
              List<int> settingRainJudge = ref.watch(settingsProvider);
              Place place = ref.watch(searchProvider);
              List<Place> favoriteList = ref.watch(favoriteProvider);

              ResultJudge result = judgeTakeUmbrella(onecall.hourly, settingRainJudge);
              return WeatherUI(
                  entry: onecall.hourly, 
                  place: place, 
                  result: result, 
                  favorite: favoriteList.contains(place));
            },
            loading: () {
              return const LoadingUI();
            },
            error: (error, stackTrace) {
              debugPrintStack(stackTrace: stackTrace);
              return ErrorUI(error: error);
            },
          ),
        ));
  }
}
