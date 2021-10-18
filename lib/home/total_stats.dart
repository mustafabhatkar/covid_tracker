// ignore_for_file: prefer_const_constructors

import 'package:covid_tracker/home/stats_content.dart';
import 'package:covid_tracker/utils/widgets/my_card.dart';

import 'package:flutter/material.dart';

import 'model/covid_stats.dart';

class TotalStats extends StatelessWidget {
  final CovidStats? covidStats;
  const TotalStats({Key? key,required this.covidStats}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyCard(
      child: Column(children: [
        Text("As of ${covidStats!.updateDate}",
            style: Theme.of(context).textTheme.subtitle2),
        SizedBox(height: 8.0),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          StatsContent(
              label: "Confirmed",
              numbers: covidStats!.totalConfirmed.toString(),
              color: Colors.white.withOpacity(0.8),
              isHeader: true),
          StatsContent(
              label: "Deaths",
              numbers: covidStats!.totalDeaths.toString(),
              color: Theme.of(context).colorScheme.secondary,
              isHeader: true),
          StatsContent(
              label: "Recovered",
              numbers: covidStats!.totalRecovered.toString(),
              color: Color(0xff2bbb85),
              isHeader: true),
        ])
      ]),
    );
  }
}
