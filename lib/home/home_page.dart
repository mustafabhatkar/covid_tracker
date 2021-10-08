import 'package:covid_tracker/home/map_widget.dart';
import 'package:covid_tracker/home/total_stats.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body:ListView(
          children: [
            MapWidget(),
            TotalStats()
          ],
        )
      ),
    );
  }

  totalStats()
}