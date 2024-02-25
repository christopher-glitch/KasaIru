import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kasairu/models/place/place.dart';
import 'package:kasairu/repository/favorite/favorite_repository.dart';

final favoriteRepositoryProvider =
    Provider<FavoriteRepository>((ref) => FavoriteRepository());

final favoriteProvider =
    StateNotifierProvider<FavoriteNotifier, List<Place>>((ref) {
  final repository = ref.watch(favoriteRepositoryProvider);
  return FavoriteNotifier(repository)..loadFavorite();
});

class FavoriteNotifier extends StateNotifier<List<Place>> {
  final FavoriteRepository _repository;

  FavoriteNotifier(this._repository) : super([]);

  Future<void> loadFavorite() async {
    List<Place> favorite = await _repository.getFavorite();
    state = favorite;
  }

  Future<void> addFavorite(Place fav) async {
    var list = [...state, fav];
    await _repository.setFavorite(list);
    state = list;
  }

  Future<void> removeFavorite(Place fav) async {
    var list = [
      for (final element in state)
        if (element != fav) element,
    ];
    await _repository.setFavorite(list);
    state = list;
  }
}
