import 'dart:async';
import 'dart:convert';


import 'package:kasairu/models/onecall/onecall_response.dart';

import 'package:kasairu/service/openweather/query/api_query.dart';
import 'package:http/http.dart' as http;

// APIを呼び出し、データを取得する
class OpenWeatherApiClient {
  Future<OneCallResponse> fetchOneCall(List<double> loc) async {
    APIQuery apiQuery = APIQuery();
    final uri = await apiQuery.openOneCallQuery(loc);
    try {
      final response = await http.get(Uri.parse(uri));
      if (response.statusCode == 200) {
        final parsed = json.decode(response.body);
        return OneCallResponse.fromJson(parsed);
      } else {
        throw Exception('Request failed with status: ${response.statusCode}.');
      }
    } catch (error) {
      throw Exception(error.toString());
    }
  }
}
