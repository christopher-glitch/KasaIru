import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kasairu/models/place/place.dart';
import 'package:kasairu/shared_preferences/favorite/favorite_notifier.dart';
import 'package:kasairu/shared_preferences/favorite/favorite_repository.dart';

final favoriteRepositoryProvider =
    Provider<FavoriteRepository>((ref) => FavoriteRepository());

final favoriteProvider =
    StateNotifierProvider<FavoriteNotifier, List<Place>>((ref) {
  final repository = ref.watch(favoriteRepositoryProvider);
  return FavoriteNotifier(repository)..loadFavorite();
});

