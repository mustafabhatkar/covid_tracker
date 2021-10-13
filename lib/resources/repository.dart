import 'package:covid_tracker/home/model/covid_stats.dart';
import 'package:covid_tracker/resources/stats_api_provider.dart';

class CovidDataRepository {
  final statsApi = StatsApiProvider();

  Future<CovidStats> getCovidStats() => statsApi.fetchStats();
}
