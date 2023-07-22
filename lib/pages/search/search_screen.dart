import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kasairu/pages/search/search_header.dart';
import 'package:kasairu/provider/placeapi_provider.dart';
import 'package:kasairu/provider/prediction_provider.dart';
import 'package:google_place/google_place.dart';
import 'package:kasairu/provider/search_provider.dart';

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => SearchScreenState();
}

class SearchScreenState extends ConsumerState {
  late FocusNode focus;

  @override
  void initState() {
    super.initState();
    focus = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    focus.dispose();
  }

  Future<void> _forecastSearch(AutocompletePrediction pred) async {
    final placeId = pred.placeId!;
    final api = ref.watch(placeAPIProvider);

    final details = await api.getAPI().details.get(placeId, language: "ja");
    if (details != null && details.result != null && mounted) {
      debugPrint(details.result!.name);
      var lat = details.result!.geometry!.location!.lat;
      var lng = details.result!.geometry!.location!.lng;
      List<double> loc = [lat!, lng!];
      ref.read(searchNameProvider.notifier).state = details.result!.name!;
      ref.read(searchLocProvider.notifier).state = loc;
    }
  }

  @override
  Widget build(BuildContext context) {
    var predList = ref.watch(predictionProvider);

    return Scaffold(
        appBar: const SearchScreenHeader(),
        body: SafeArea(
            child: Container(
          color: Colors.white,
          margin: const EdgeInsets.all(3),
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Center(
              child: ListView.builder(
                  itemCount: predList.length,
                  itemBuilder: (context, index) {
                    var pred = predList[index];

                    return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10.0),
                        height: 80.0,
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color.fromARGB(255, 133, 133, 133),
                              width: 1.0,
                            ),
                          ),
                        ),
                        child: Center(
                            child: ListTile(
                          leading: const Icon(
                            Icons.pin_drop,
                            size: 28,
                          ),
                          dense: true,
                          title: Text(pred.description.toString()),
                          minLeadingWidth: 4.0,
                          onTap: () async {
                            debugPrint('tap');
                            await _forecastSearch(pred);
                            if (!mounted) return;
                            Navigator.pop(context);
                          },
                        )));
                  })),
        )));
  }
}
