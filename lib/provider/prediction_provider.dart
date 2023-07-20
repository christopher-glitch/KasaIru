import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_place/google_place.dart';

final predictionProvider = StateProvider<List<AutocompletePrediction>>((ref) => []);
