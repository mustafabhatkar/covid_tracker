// ignore_for_file: prefer_const_constructors

import 'package:covid_tracker/home/stats_content.dart';
import 'package:covid_tracker/utils/widgets/my_card.dart';

import 'package:flutter/material.dart';

class TotalStats extends StatelessWidget {
  const TotalStats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyCard(
      child: Column(children: [
        Text("As of 06-10-2021 10:00",
            style: Theme.of(context).textTheme.subtitle2),
        SizedBox(height: 8.0),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          StatsContent(
              label: "Confirmed",
              numbers: "20,000",
              color: Colors.white.withOpacity(0.8),
              isHeader: true),
          StatsContent(
              label: "Deaths",
              numbers: "5,000",
              color: Theme.of(context).colorScheme.secondary,
              isHeader: true),
          StatsContent(
              label: "Recovered",
              numbers: "10,000",
              color: Color(0xff2bbb85),
              isHeader: true),
        ])
      ]),
    );
  }
}
