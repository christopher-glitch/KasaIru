import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kasairu/models/place/place.dart';
import 'package:kasairu/pages/loading/loading.dart';
import 'package:kasairu/pages/weather/weather_header.dart';
import 'package:kasairu/provider/weather_provider.dart';

import '../../error/error.dart';
import 'list_ui.dart';

class ListScreen extends ConsumerStatefulWidget {
  const ListScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => ListScreenState();
}

class ListScreenState extends ConsumerState {
  bool isInitLoading = false;
  Place? current;
  

  @override
  Widget build(BuildContext context) {
    final favoriteResponse = ref.watch(favoriteOCRProvider);

    return Scaffold(
        appBar: const WeatherScreenHeader(),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: favoriteResponse.when(
            data: (fav) {
              if (fav.isEmpty) {
                return const LoadingUI();
              } else {
                return ListUI(response: fav);
              }
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
