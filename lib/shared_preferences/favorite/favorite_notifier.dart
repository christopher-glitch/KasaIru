import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kasairu/models/place/place.dart';
import 'package:kasairu/shared_preferences/favorite/favorite_repository.dart';

class FavoriteNotifier extends StateNotifier<List<Place>> {
  final FavoriteRepository _repository;

  FavoriteNotifier(this._repository) : super([]);

  Future<void> loadFavorite() async {
    List<Place> favorite = await _repository.getFavorite();
    state = favorite;
  }

  Future<void> addFavorite(Place fav) async {
    var list = state;
    list.add(fav);
    await _repository.setFavorite(list);
    state = list;
  }
}
