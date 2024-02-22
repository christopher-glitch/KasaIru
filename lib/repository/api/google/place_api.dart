import 'package:google_place/google_place.dart';

class PlaceAPIClient {
  late GooglePlace googlePlace;

  PlaceAPIClient() {
    //googlePlace = GooglePlace(dotenv.get("GOOGLE_API"));
    googlePlace = GooglePlace(const String.fromEnvironment("GOOGLE_API"));
  }

  GooglePlace getAPI() {
    return googlePlace;
  }

  Future<AutocompleteResponse?> getAutoComplete(String text) async {
    return await googlePlace.autocomplete.get(text);
  }

  Future<DetailsResponse?> getSearchPlace(String placeID) async {
    return await googlePlace.details.get(placeID, language: "ja");
  }
}
