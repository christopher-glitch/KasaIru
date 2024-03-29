import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_place/google_place.dart';

final predictionProvider =
    NotifierProvider<PredictionNotifier, List<AutocompletePrediction>>(
        PredictionNotifier.new);

class PredictionNotifier extends Notifier<List<AutocompletePrediction>> {
  @override
  List<AutocompletePrediction> build() {
    return [];
  }

  void setPredition(List<AutocompletePrediction> predictionList) {
    state = predictionList;
  }

  void reset() {
    state = [];
  }
}
