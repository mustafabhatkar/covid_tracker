// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:covid_tracker/home/country_list.dart';
import 'package:covid_tracker/home/map_widget.dart';
import 'package:covid_tracker/home/total_stats.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _homeProvider = HomeProvider();

  @override
  void initState() {
    super.initState();
    _homeProvider.fetchCovidStats();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: _homeProvider,
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Scaffold(
            backgroundColor: Theme.of(context).backgroundColor,
            body: Consumer<HomeProvider>(builder: (context, provider, child) {
              if (provider.covidStats != null) {
                return ListView(
                  children: [
                    MapWidget(),
                    TotalStats(covidStats: provider.covidStats),
                    CountryList(listOfStats: provider.covidStats!.listOfStats)
                  ],
                );
              }
              return Center(child: const CircularProgressIndicator());
            })),
      ),
    );
  }
}
