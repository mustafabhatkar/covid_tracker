// ignore_for_file: prefer_const_constructors

import 'package:covid_tracker/home/stats_content.dart';
import 'package:covid_tracker/utils/widgets/my_card.dart';
import 'package:flutter/material.dart';
class CountryList extends StatelessWidget {
  const CountryList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder:(context,index){
        return MyCard(
          child: Row(
            children: [
            Text("Country Name",style: Theme.of(context).textTheme.headline6),
            Spacer(),
            StatsContent(
                label: "Confirmed",
                numbers: "1,000",
                color: Colors.white.withOpacity(0.8)),
            SizedBox(width: 8.0),    
            StatsContent(
                label: "Deaths",
                numbers: "500",
                color: Theme.of(context).colorScheme.secondary),
            SizedBox(width: 8.0),
            StatsContent(
                label: "Recovered",
                numbers: "8000",
                color: Color(0xff2bbb85)), 
          ]),
        );
      } );
  }
}