class CovidStats {
  late int totalDeaths;
  late int totalConfirmed;
  late int totalRecovered;
  late String updateDate;
  late List<ListOfStats> listOfStats;

  CovidStats(
      {required this.totalDeaths,
      required this.totalConfirmed,
      required this.totalRecovered,
      required this.updateDate,
      required this.listOfStats});

  CovidStats.fromJson(Map<String, dynamic> json) {
    totalDeaths = json['totalDeaths'];
    totalConfirmed = json['totalConfirmed'];
    totalRecovered = json['totalRecovered'];
    updateDate = json['updateDate'];
    if (json['listOfStats'] != null) {
      listOfStats = [];
      json['listOfStats'].forEach((v) {
        listOfStats.add(new ListOfStats.fromJson(v));
      });
    }
  }
}

class ListOfStats {
  late String id;
  late String state;
  late String country;
  late int confirmed;
  late int deaths;
  late int recovered;
  late double lat;
  late double lon;

  ListOfStats(
      {required this.id,
      required this.state,
      required this.country,
      required this.confirmed,
      required this.deaths,
      required this.recovered,
      required this.lat,
      required this.lon});

  ListOfStats.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    state = json['state'];
    country = json['country'];
    confirmed = json['confirmed'];
    deaths = json['deaths'];
    recovered = json['recovered'];
    lat = json['lat'];
    lon = json['lon'];
  }

}