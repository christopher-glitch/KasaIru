import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchNameProvider = StateProvider<String>((ref) => "東京都");

final searchLocProvider = StateProvider((ref) {
  List<double> loc = [35.6761919, 139.6503106];
  return loc;
});
