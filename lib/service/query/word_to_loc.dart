import 'dart:io';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';

class WordToLoc {
  get longitide => null;

  Future<List<double>> wordToLocation(String query) async {
    List<Location> locations = await locationFromAddress(query);
    debugPrint(locations.length.toString());
    return [locations.first.latitude, locations.first.longitude];
  }
}