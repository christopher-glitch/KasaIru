import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kasairu/service/google/place_api.dart';

final placeAPIProvider = Provider<PlaceAPIClient>((ref) => PlaceAPIClient());
