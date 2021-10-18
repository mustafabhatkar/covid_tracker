// ignore_for_file: prefer_const_constructors

import 'package:covid_tracker/home/model/covid_stats.dart';
import 'package:covid_tracker/home/stats_content.dart';
import 'package:covid_tracker/utils/widgets/my_card.dart';
import 'package:flutter/material.dart';

class CountryList extends StatelessWidget {
  final List<ListOfStats>? listOfStats;
  const CountryList({Key? key, required this.listOfStats}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: listOfStats!.length,
        itemBuilder: (context, index) {
          return MyCard(
            child: Row(children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.45,
                child: Text(listOfStats![index].country,
                    style: Theme.of(context).textTheme.headline6),
              ),
              Spacer(),
              StatsContent(
                  label: "Confirmed",
                  numbers: listOfStats![index].confirmed.toString(),
                  color: Colors.white.withOpacity(0.8)),
              SizedBox(width: 8.0),
              StatsContent(
                  label: "Deaths",
                  numbers: listOfStats![index].deaths.toString(),
                  color: Theme.of(context).colorScheme.secondary),
              SizedBox(width: 8.0),
              StatsContent(
                  label: "Recovered",
                  numbers: listOfStats![index].recovered.toString(),
                  color: Color(0xff2bbb85)),
            ]),
          );
        });
  }
}
