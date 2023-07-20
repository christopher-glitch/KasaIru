import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_place/google_place.dart';
import 'package:umbrella/provider/prediction_provider.dart';

class SearchScreenHeader extends ConsumerStatefulWidget
    implements PreferredSizeWidget {
  const SearchScreenHeader({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      SearchScreenHeaderState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight * 1.3);
}

class SearchScreenHeaderState extends ConsumerState {
  final _searchController = TextEditingController(text: "");

  late GooglePlace googlePlace;
  Timer? debounce;

  @override
  void initState() {
    super.initState();
    googlePlace = GooglePlace(dotenv.get("GOOGLE_API"));
  }

  void _autocomplete(text) async {
    var result = await googlePlace.autocomplete.get(text);
    if (result != null && result.predictions != null && mounted) {
      ref.read(predictionProvider.notifier).state = result.predictions!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.5,
      backgroundColor: Colors.white,
      iconTheme: const IconThemeData(color: Colors.black),
      centerTitle: false,
      title: TextField(
          controller: _searchController,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            hintText: "地名を検索",
            suffixIcon: IconButton(
              icon: const Icon(
                Icons.clear,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {
                setState(() {
                  _searchController.clear();
                });
              },
            ),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
          ),
          onChanged: (text) {
            if (debounce?.isActive ?? false) debounce!.cancel();
            debounce = Timer(const Duration(milliseconds: 1000), () {
              if (text.isNotEmpty) {
                _autocomplete(text);
              }
            });
          }),
    );
  }
}
