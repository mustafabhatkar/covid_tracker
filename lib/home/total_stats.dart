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
        Row(children:[
          
        ])    
      ]),
    );
  }
}
