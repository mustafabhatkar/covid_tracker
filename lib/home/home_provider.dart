import 'package:covid_tracker/home/model/covid_stats.dart';
import 'package:covid_tracker/resources/repository.dart';
import 'package:flutter/foundation.dart';

class HomeProvider with ChangeNotifier {
  final _repository = CovidDataRepository();
  CovidStats? covidStats;

  fetchCovidStats() async {
    covidStats = await _repository.getCovidStats();
    notifyListeners();
  }
}
