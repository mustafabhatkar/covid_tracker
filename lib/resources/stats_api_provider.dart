import 'dart:convert';

import 'package:covid_tracker/home/model/covid_stats.dart';
import 'package:http/http.dart' as http;

class StatsApiProvider {
  Future<CovidStats> fetchStats() async {
    final response =
        await http.get(Uri.parse('https://tempapi.proj.me/api/jbfLDDcAh'));
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return CovidStats.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}
