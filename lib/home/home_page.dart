import 'package:covid_tracker/home/country_list.dart';
import 'package:covid_tracker/home/map_widget.dart';
import 'package:covid_tracker/home/total_stats.dart';
import 'package:covid_tracker/resources/repository.dart';
import 'package:flutter/material.dart';

import 'model/covid_stats.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final repository = CovidDataRepository();
  @override
  void initState() {
    super.initState();
    fetchDataFromInternet();
  }

  fetchDataFromInternet() async {
    CovidStats covidStats = await repository.getCovidStats();
    print(covidStats.totalConfirmed);
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: Scaffold(
          backgroundColor: Theme.of(context).backgroundColor,
          body: ListView(
            children: const [MapWidget(), TotalStats(), CountryList()],
          )),
    );
  }
}
